// order_state.dart
part of 'order_cubit.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = OrderInitial;
  const factory OrderState.loading() = OrderLoading;
  const factory OrderState.success({
    required List<OrderModel> orders,
    required List<OrderModel> filteredOrders,
    required String selectedStatus,
    String? message,
  }) = OrderSuccess;
  const factory OrderState.error({
    required String message,
  }) = OrderError;
}
