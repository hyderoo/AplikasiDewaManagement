// payment_detail_state.dart
part of 'payment_detail_cubit.dart';

@freezed
class PaymentDetailState with _$PaymentDetailState {
  const factory PaymentDetailState.initial() = PaymentDetailInitial;
  const factory PaymentDetailState.loading() = PaymentDetailLoading;
  const factory PaymentDetailState.success({
    required OrderModel order,
    required List<BankModel> banks,
    required List<VirtualAccountModel> virtualAccounts,
    VirtualAccountModel? selectedVirtualAccount,
    String? virtualAccountNumber,
    DateTime? expiredAt,
    String? message,
  }) = PaymentDetailSuccess;
  const factory PaymentDetailState.error({
    required String message,
  }) = PaymentDetailError;
}
