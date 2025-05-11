// lib/cubits/payment_detail/payment_detail_state.dart
part of 'payment_detail_cubit.dart';

@freezed
class PaymentDetailState with _$PaymentDetailState {
  const factory PaymentDetailState.initial() = PaymentDetailInitial;
  const factory PaymentDetailState.loading() = PaymentDetailLoading;
  const factory PaymentDetailState.success({
    required OrderModel order,
    required String virtualAccountNumber,
    required VirtualAccountModel virtualAccount,
    required DateTime expiredAt,
    required double amount,
    String? message,
    bool? isPaymentConfirmed,
  }) = PaymentDetailSuccess;
  const factory PaymentDetailState.error({
    required String message,
  }) = PaymentDetailError;
}
