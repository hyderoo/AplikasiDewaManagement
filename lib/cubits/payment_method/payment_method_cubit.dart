// lib/cubits/payment_method/payment_method_cubit.dart
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/data/repositories/order_repository.dart';
import 'package:dewa_wo_app/data/repositories/payment_repository.dart';
import 'package:dewa_wo_app/models/bank_model.dart';
import 'package:dewa_wo_app/models/order_model.dart';
import 'package:dewa_wo_app/models/response/payment_response.dart';
import 'package:dewa_wo_app/models/virtual_account_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'payment_method_state.dart';
part 'payment_method_cubit.freezed.dart';

@lazySingleton
class PaymentMethodCubit extends Cubit<PaymentMethodState> {
  final OrderRepository _orderRepository;
  final PaymentRepository _paymentRepository;
  final ImagePicker _imagePicker = ImagePicker();

  PaymentMethodCubit({
    required OrderRepository orderRepository,
    required PaymentRepository paymentRepository,
  })  : _orderRepository = orderRepository,
        _paymentRepository = paymentRepository,
        super(const PaymentMethodState.initial());

  Future<void> loadPaymentOptions(int orderId) async {
    emit(const PaymentMethodState.loading());

    try {
      // Get order detail
      final orderResponse = await _orderRepository.getOrderById(orderId);
      if (orderResponse.status != 'success' || orderResponse.data == null) {
        emit(PaymentMethodState.error(message: orderResponse.message));
        return;
      }
      final order = orderResponse.data as OrderModel;

      // Get banks
      final banksResponse = await _orderRepository.getBanks();
      final banks =
          banksResponse.status == 'success' && banksResponse.data != null
              ? banksResponse.data as List<BankModel>
              : <BankModel>[];

      // Get virtual accounts
      final vaResponse = await _orderRepository.getVirtualAccounts();
      final virtualAccounts =
          vaResponse.status == 'success' && vaResponse.data != null
              ? (vaResponse.data as List<VirtualAccountModel>)
                  .where((va) => va.isActive)
                  .toList()
              : <VirtualAccountModel>[];

      // Set default selections
      final defaultBank = banks.isNotEmpty ? banks.first : null;
      final defaultVA =
          virtualAccounts.isNotEmpty ? virtualAccounts.first : null;

      // Set default payment type and amount based on payment status
      final double paidAmount = double.tryParse(order.paidAmount) ?? 0;
      final bool hasExistingPayment = paidAmount > 0;

      PaymentType defaultPaymentType;
      double paymentAmount;

      if (hasExistingPayment) {
        // If there's existing payment, default to full payment (remaining amount)
        defaultPaymentType = PaymentType.fullPayment;
        paymentAmount = order.remainingAmount;
      } else if (order.requiresDownPayment) {
        // If no payment and down payment is required, default to down payment
        defaultPaymentType = PaymentType.downPayment;
        paymentAmount = order.downPaymentAmountValue;
      } else {
        // If no payment and no down payment required, default to full payment
        defaultPaymentType = PaymentType.fullPayment;
        paymentAmount = double.parse(order.price);
      }

      emit(PaymentMethodState.success(
        order: order,
        banks: banks,
        virtualAccounts: virtualAccounts,
        selectedBank: defaultBank,
        selectedVirtualAccount: defaultVA,
        selectedPaymentType: defaultPaymentType,
        selectedPaymentMethod:
            PaymentMethod.bankTransfer, // Default to bank transfer
        paymentAmount: paymentAmount,
      ));
    } catch (e) {
      emit(PaymentMethodState.error(
          message: 'Terjadi kesalahan: ${e.toString()}'));
    }
  }

  void selectBank(BankModel bank) {
    if (state is PaymentMethodSuccess) {
      final currentState = state as PaymentMethodSuccess;
      emit(currentState.copyWith(
        selectedBank: bank,
      ));
    }
  }

  void selectVirtualAccount(VirtualAccountModel virtualAccount) {
    if (state is PaymentMethodSuccess) {
      final currentState = state as PaymentMethodSuccess;
      emit(currentState.copyWith(
        selectedVirtualAccount: virtualAccount,
      ));
    }
  }

  void selectPaymentMethod(PaymentMethod method) {
    if (state is PaymentMethodSuccess) {
      final currentState = state as PaymentMethodSuccess;
      emit(currentState.copyWith(
        selectedPaymentMethod: method,
      ));
    }
  }

  void selectPaymentType(PaymentType paymentType) {
    if (state is PaymentMethodSuccess) {
      final currentState = state as PaymentMethodSuccess;
      final order = currentState.order;

      double paymentAmount;

      switch (paymentType) {
        case PaymentType.downPayment:
          paymentAmount = order.downPaymentAmountValue;
          break;
        case PaymentType.fullPayment:
          paymentAmount = order.remainingAmount;
          break;
        case PaymentType.installment:
          // Default installment to 50% of remaining, but allow custom amounts later
          paymentAmount = order.remainingAmount / 2;
          break;
      }

      emit(currentState.copyWith(
        selectedPaymentType: paymentType,
        paymentAmount: paymentAmount,
      ));
    }
  }

  void updateInstallmentAmount(double amount) {
    if (state is PaymentMethodSuccess) {
      final currentState = state as PaymentMethodSuccess;
      if (currentState.selectedPaymentType == PaymentType.installment) {
        final maxAmount = currentState.order.remainingAmount;

        // Ensure amount is within valid range
        final validAmount = amount.clamp(1, maxAmount).toDouble();

        emit(currentState.copyWith(
          paymentAmount: validAmount,
        ));
      }
    }
  }

  Future<void> pickPaymentProof() async {
    if (state is! PaymentMethodSuccess) return;

    try {
      final XFile? image = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 80,
      );

      if (image != null) {
        emit((state as PaymentMethodSuccess).copyWith(
          paymentProofPath: image.path,
        ));
      }
    } catch (e) {
      emit(PaymentMethodState.error(
          message: 'Gagal memilih gambar: ${e.toString()}'));
    }
  }

  Future<void> submitPayment() async {
    if (state is! PaymentMethodSuccess) return;

    final currentState = state as PaymentMethodSuccess;

    // Validate based on payment method
    if (currentState.selectedPaymentMethod == PaymentMethod.bankTransfer) {
      if (currentState.paymentProofPath == null) {
        emit(currentState.copyWith(
          message: 'Harap unggah bukti pembayaran',
        ));
        return;
      }
    }

    emit(const PaymentMethodState.loading());

    try {
      PaymentResponse response;
      final orderId = currentState.order.id;
      final paymentType =
          _getPaymentTypeString(currentState.selectedPaymentType);
      final amount = currentState.paymentAmount;

      if (currentState.selectedPaymentMethod == PaymentMethod.bankTransfer) {
        // Submit bank transfer payment
        response = await _paymentRepository.submitBankTransfer(
          orderId: orderId,
          paymentType: paymentType,
          bankCode: currentState.selectedBank!.code,
          amount: amount,
          paymentProof: File(currentState.paymentProofPath!),
        );
      } else {
        // Create virtual account payment
        response = await _paymentRepository.createVirtualAccount(
          orderId: orderId,
          paymentType: paymentType,
          bankCode: currentState.selectedVirtualAccount!.bankCode,
          amount: amount,
        );
      }

      if (response.status == 'success' && response.data != null) {
        // For virtual account, we get a payment ID from the response
        final paymentId = response.data['payment_id'] as int? ?? 0;

        // Emit a submitted state with paymentId and selected payment method
        emit(PaymentMethodState.submitted(
          paymentId: paymentId,
          paymentMethod: currentState.selectedPaymentMethod,
        ));
      } else {
        emit(PaymentMethodState.error(
          message: response.message,
        ));
      }
    } catch (e) {
      emit(PaymentMethodState.error(
          message: 'Terjadi kesalahan: ${e.toString()}'));
    }
  }

// Helper method to convert enum to string
  String _getPaymentTypeString(PaymentType type) {
    switch (type) {
      case PaymentType.downPayment:
        return 'down_payment';
      case PaymentType.installment:
        return 'installment';
      case PaymentType.fullPayment:
        return 'full_payment';
      default:
        return 'full_payment';
    }
  }
}
