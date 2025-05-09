// order_form_state.dart
part of 'order_form_cubit.dart';

@freezed
class OrderFormState with _$OrderFormState {
  const factory OrderFormState.initial() = OrderFormInitial;
  const factory OrderFormState.loading() = OrderFormLoading;
  const factory OrderFormState.success({
    required OrderModel order,
    String? message,
  }) = OrderFormSuccess;
  const factory OrderFormState.error({
    required String message,
  }) = OrderFormError;
}
