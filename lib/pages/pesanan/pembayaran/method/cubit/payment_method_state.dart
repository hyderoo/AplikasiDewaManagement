// lib/cubits/payment_method/payment_method_state.dart
part of 'payment_method_cubit.dart';

// Payment Type enumeration
enum PaymentType { downPayment, installment, fullPayment }

// Payment Method enumeration
enum PaymentMethod { bankTransfer, virtualAccount }

@freezed
class PaymentMethodState with _$PaymentMethodState {
  const factory PaymentMethodState.initial() = PaymentMethodInitial;
  const factory PaymentMethodState.loading() = PaymentMethodLoading;
  const factory PaymentMethodState.success({
    required OrderModel order,
    required List<BankModel> banks,
    required List<VirtualAccountModel> virtualAccounts,
    BankModel? selectedBank,
    VirtualAccountModel? selectedVirtualAccount,
    required PaymentType selectedPaymentType,
    required PaymentMethod selectedPaymentMethod,
    required double paymentAmount,
    String? paymentProofPath,
    String? message,
  }) = PaymentMethodSuccess;
  const factory PaymentMethodState.error({
    required String message,
  }) = PaymentMethodError;
  const factory PaymentMethodState.submitted({
    required int paymentId,
    required PaymentMethod paymentMethod,
  }) = PaymentMethodSubmitted;
}
