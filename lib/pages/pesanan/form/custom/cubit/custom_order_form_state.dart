// lib/pages/pesanan/form/cubit/custom_order_form_state.dart
part of 'custom_order_form_cubit.dart';

@freezed
class CustomOrderFormState with _$CustomOrderFormState {
  const factory CustomOrderFormState.initial() = CustomOrderFormInitial;
  const factory CustomOrderFormState.loading() = CustomOrderFormLoading;
  const factory CustomOrderFormState.success({
    required OrderModel order,
    String? message,
  }) = CustomOrderFormSuccess;
  const factory CustomOrderFormState.error({
    required String message,
  }) = CustomOrderFormError;
}
