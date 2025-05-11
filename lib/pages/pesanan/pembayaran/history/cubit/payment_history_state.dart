// lib/cubits/payment_history/payment_history_state.dart
part of 'payment_history_cubit.dart';

@freezed
class PaymentHistoryState with _$PaymentHistoryState {
  const factory PaymentHistoryState.initial() = PaymentHistoryInitial;
  const factory PaymentHistoryState.loading() = PaymentHistoryLoading;
  const factory PaymentHistoryState.success({
    required OrderModel order,
    required List<PaymentModel> payments,
  }) = PaymentHistorySuccess;
  const factory PaymentHistoryState.error({
    required String message,
  }) = PaymentHistoryError;
}
