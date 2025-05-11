// order_detail_state.dart
part of 'order_detail_cubit.dart';

@freezed
class OrderDetailState with _$OrderDetailState {
  const factory OrderDetailState.initial() = OrderDetailInitial;
  const factory OrderDetailState.loading() = OrderDetailLoading;
  const factory OrderDetailState.success({
    required OrderModel order,
    String? message,
  }) = OrderDetailSuccess;
  const factory OrderDetailState.error({
    required String message,
  }) = OrderDetailError;
}
