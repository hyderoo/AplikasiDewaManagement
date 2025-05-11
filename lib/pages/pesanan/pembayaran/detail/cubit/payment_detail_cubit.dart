// lib/cubits/payment_detail/payment_detail_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dewa_wo_app/core/repositories/order_repository.dart';
import 'package:dewa_wo_app/core/repositories/payment_repository.dart';
import 'package:dewa_wo_app/core/models/order_model.dart';
import 'package:dewa_wo_app/core/models/payment_model.dart';
import 'package:dewa_wo_app/core/models/virtual_account_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_detail_state.dart';
part 'payment_detail_cubit.freezed.dart';

@lazySingleton
class PaymentDetailCubit extends Cubit<PaymentDetailState> {
  final PaymentRepository _paymentRepository;
  final OrderRepository _orderRepository;

  PaymentDetailCubit(
      {required PaymentRepository paymentRepository,
      required OrderRepository orderRepository})
      : _orderRepository = orderRepository,
        _paymentRepository = paymentRepository,
        super(const PaymentDetailState.initial());

  Future<void> loadPaymentDetails(int id) async {
    emit(const PaymentDetailState.loading());

    try {
      // Fetch order details
      final paymentResponse = await _paymentRepository.getPaymentDetails(id);
      if (paymentResponse.status != 'success' || paymentResponse.data == null) {
        emit(PaymentDetailState.error(message: paymentResponse.message));
        return;
      }

      final payment = paymentResponse.data as PaymentModel;

      // Get virtual account details by bank code
      final VirtualAccountModel? virtualAccount = payment.bankCode != null
          ? await _getVirtualAccountByCode(payment.bankCode!)
          : null;

      if (virtualAccount == null) {
        emit(const PaymentDetailState.error(
            message: 'Bank Virtual Account tidak ditemukan'));
        return;
      }

      // Set expiration time (24 hours from payment creation)
      final expiredAt =
          DateTime.parse(payment.createdAt).add(const Duration(hours: 24));

      final orderResponse =
          await _orderRepository.getOrderById(payment.orderId);
      bool isPaymentConfirmed = payment.status == 'verified';
      emit(PaymentDetailState.success(
        order: orderResponse.data!,
        virtualAccountNumber: payment.vaNumber ?? '-',
        virtualAccount: virtualAccount,
        expiredAt: expiredAt,
        amount: double.tryParse(payment.amount) ?? 0,
        isPaymentConfirmed: isPaymentConfirmed,
        message: isPaymentConfirmed ? 'Pembayaran Terkonfirmasi' : null,
      ));
    } catch (e) {
      emit(PaymentDetailState.error(
          message: 'Terjadi kesalahan: ${e.toString()}'));
    }
  }

  Future<VirtualAccountModel?> _getVirtualAccountByCode(String bankCode) async {
    final vaResponse = await _orderRepository.getVirtualAccounts();

    if (vaResponse.status == 'success' && vaResponse.data != null) {
      final virtualAccounts = vaResponse.data as List<VirtualAccountModel>;
      return virtualAccounts.firstWhereOrNull(
        (va) => va.bankCode == bankCode,
      );
    }

    return null;
  }

  Future<void> confirmPayment() async {
    if (state is! PaymentDetailSuccess) return;

    emit(const PaymentDetailState.loading());

    try {
      // In a real app, this would send payment confirmation to backend
      // For now, we'll just simulate a successful payment
      await Future.delayed(const Duration(seconds: 2));

      final currentState = state as PaymentDetailSuccess;

      emit(PaymentDetailState.success(
        order: currentState.order,
        virtualAccountNumber: currentState.virtualAccountNumber,
        virtualAccount: currentState.virtualAccount,
        expiredAt: currentState.expiredAt,
        amount: currentState.amount,
        message: 'Pembayaran berhasil dikonfirmasi',
        isPaymentConfirmed: true,
      ));
    } catch (e) {
      emit(PaymentDetailState.error(
          message: 'Terjadi kesalahan: ${e.toString()}'));
    }
  }

  Future<void> checkPaymentStatus() async {
    if (state is! PaymentDetailSuccess) return;

    try {
      // In a real app, this would check payment status from the backend
      // For now, we'll just simulate pending status
      await Future.delayed(const Duration(seconds: 1));

      final currentState = state as PaymentDetailSuccess;

      emit(PaymentDetailState.success(
        order: currentState.order,
        virtualAccountNumber: currentState.virtualAccountNumber,
        virtualAccount: currentState.virtualAccount,
        expiredAt: currentState.expiredAt,
        amount: currentState.amount,
        message:
            'Pembayaran masih dalam proses. Harap tunggu notifikasi dari bank Anda.',
        isPaymentConfirmed: false,
      ));
    } catch (e) {
      final currentState = state as PaymentDetailSuccess;

      emit(PaymentDetailState.success(
        order: currentState.order,
        virtualAccountNumber: currentState.virtualAccountNumber,
        virtualAccount: currentState.virtualAccount,
        expiredAt: currentState.expiredAt,
        amount: currentState.amount,
        message: 'Gagal memeriksa status: ${e.toString()}',
        isPaymentConfirmed: false,
      ));
    }
  }
}
