// order_detail_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/data/repositories/order_repository.dart';
import 'package:dewa_wo_app/models/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_detail_state.dart';
part 'order_detail_cubit.freezed.dart';

@injectable
class OrderDetailCubit extends Cubit<OrderDetailState> {
  final OrderRepository _orderRepository;

  OrderDetailCubit({required OrderRepository orderRepository})
      : _orderRepository = orderRepository,
        super(const OrderDetailState.initial());

  Future<void> getOrderDetail(int orderId) async {
    emit(const OrderDetailState.loading());

    final response = await _orderRepository.getOrderById(orderId);

    if (response.status == 'success' && response.data != null) {
      final order = response.data as OrderModel;
      emit(OrderDetailState.success(
        order: order,
        message: response.message,
      ));
    } else {
      emit(OrderDetailState.error(
        message: response.message,
      ));
    }
  }

  Future<void> cancelOrder(int orderId, {String? reason}) async {
    if (state is! OrderDetailSuccess) return;

    final currentState = state as OrderDetailSuccess;
    emit(const OrderDetailState.loading());

    final response =
        await _orderRepository.cancelOrder(orderId, reason: reason);

    if (response.status == 'success' && response.data != null) {
      final updatedOrder = response.data as OrderModel;
      emit(OrderDetailState.success(
        order: updatedOrder,
        message: response.message,
      ));
    } else {
      // Return to previous state with error message
      emit(OrderDetailState.error(message: response.message));
      // Then return to previous state
      emit(currentState);
    }
  }

  Future<void> completeOrder(int orderId) async {
    if (state is! OrderDetailSuccess) return;

    final currentState = state as OrderDetailSuccess;
    emit(const OrderDetailState.loading());

    final response = await _orderRepository.completeOrder(orderId);

    if (response.status == 'success' && response.data != null) {
      final updatedOrder = response.data as OrderModel;
      emit(OrderDetailState.success(
        order: updatedOrder,
        message: response.message,
      ));
    } else {
      // Return to previous state with error message
      emit(OrderDetailState.error(message: response.message));
      // Then return to previous state
      emit(currentState);
    }
  }

  Future<void> refreshOrderDetail(int orderId) async {
    await getOrderDetail(orderId);
  }

  void resetState() {
    emit(const OrderDetailState.initial());
  }
}
