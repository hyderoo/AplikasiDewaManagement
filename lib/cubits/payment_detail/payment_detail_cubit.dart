// payment_detail_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/data/repositories/order_repository.dart';
import 'package:dewa_wo_app/models/bank_model.dart';
import 'package:dewa_wo_app/models/order_model.dart';
import 'package:dewa_wo_app/models/virtual_account_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_detail_state.dart';
part 'payment_detail_cubit.freezed.dart';

@injectable
class PaymentDetailCubit extends Cubit<PaymentDetailState> {
  final OrderRepository _orderRepository;

  PaymentDetailCubit({required OrderRepository orderRepository})
      : _orderRepository = orderRepository,
        super(const PaymentDetailState.initial());

  Future<void> loadPaymentDetails(int orderId) async {
    emit(const PaymentDetailState.loading());

    try {
      // Get order detail
      final orderResponse = await _orderRepository.getOrderById(orderId);
      if (orderResponse.status != 'success' || orderResponse.data == null) {
        emit(PaymentDetailState.error(message: orderResponse.message));
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

      // Set default selection
      final defaultVA =
          virtualAccounts.isNotEmpty ? virtualAccounts.first : null;

      // Generate virtual account number (in real app, this should come from backend)
      final vaNumber = _generateVirtualAccountNumber();

      // Set expiration time (24 hours from now)
      final expiredAt = DateTime.now().add(const Duration(hours: 24));

      emit(PaymentDetailState.success(
        order: order,
        banks: banks,
        virtualAccounts: virtualAccounts,
        selectedVirtualAccount: defaultVA,
        virtualAccountNumber: vaNumber,
        expiredAt: expiredAt,
      ));
    } catch (e) {
      emit(PaymentDetailState.error(
          message: 'Terjadi kesalahan: ${e.toString()}'));
    }
  }

  void selectVirtualAccount(VirtualAccountModel virtualAccount) {
    if (state is PaymentDetailSuccess) {
      final currentState = state as PaymentDetailSuccess;
      emit(currentState.copyWith(
        selectedVirtualAccount: virtualAccount,
      ));
    }
  }

  String _generateVirtualAccountNumber() {
    // In real app, this should come from backend
    // This is just a dummy implementation
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    return timestamp.toString().padLeft(16, '0').substring(0, 16);
  }

  Future<void> confirmPayment() async {
    if (state is! PaymentDetailSuccess) return;

    emit(const PaymentDetailState.loading());

    // In real app, this would send payment confirmation to backend
    // For now, we'll just simulate a successful payment
    await Future.delayed(const Duration(seconds: 2));

    // Navigate back or show success
    emit(PaymentDetailState.success(
      order: (state as PaymentDetailSuccess).order,
      banks: (state as PaymentDetailSuccess).banks,
      virtualAccounts: (state as PaymentDetailSuccess).virtualAccounts,
      selectedVirtualAccount:
          (state as PaymentDetailSuccess).selectedVirtualAccount,
      virtualAccountNumber:
          (state as PaymentDetailSuccess).virtualAccountNumber,
      expiredAt: (state as PaymentDetailSuccess).expiredAt,
      message: 'Pembayaran berhasil dikonfirmasi',
    ));
  }
}
