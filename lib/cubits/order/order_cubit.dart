import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/data/repositories/order_repository.dart';
import 'package:dewa_wo_app/models/order_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

@lazySingleton
class OrderCubit extends Cubit<OrderState> {
  final OrderRepository _orderRepository;

  OrderCubit({required OrderRepository orderRepository})
      : _orderRepository = orderRepository,
        super(const OrderState.initial());

  // Status options that match the API response
  final List<String> statusOptions = [
    'semua',
    'pending_payment',
    'ongoing',
    'completed',
    'cancelled',
  ];

  // Display names for the status
  final Map<String, String> statusDisplayNames = {
    'semua': 'Semua',
    'pending_payment': 'Menunggu Pembayaran',
    'ongoing': 'Berjalan',
    'completed': 'Selesai',
    'cancelled': 'Dibatalkan',
  };

  Future<void> getOrders() async {
    emit(const OrderState.loading());

    final response = await _orderRepository.getOrders();

    if (response.status == 'success' && response.data != null) {
      final orders = response.data as List<OrderModel>;
      emit(OrderState.success(
        orders: orders,
        filteredOrders: orders,
        selectedStatus: 'semua',
        message: response.message,
      ));
    } else {
      emit(OrderState.error(
        message: response.message,
      ));
    }
  }

  Future<void> getOrdersByStatus(String status) async {
    // If current state is success and we're just filtering, don't reload
    if (state is OrderSuccess && status != 'semua') {
      final currentState = state as OrderSuccess;

      // Update the selected status and filter from current orders
      final filteredOrders =
          currentState.orders.where((order) => order.status == status).toList();

      emit(OrderState.success(
        orders: currentState.orders,
        filteredOrders: filteredOrders,
        selectedStatus: status,
        message: currentState.message,
      ));
      return;
    }

    // Otherwise, fetch from API if needed
    if (status == 'semua') {
      await getOrders();
    } else {
      emit(const OrderState.loading());

      final response = await _orderRepository.getOrdersByStatus(status);

      if (response.status == 'success' && response.data != null) {
        final orders = response.data as List<OrderModel>;

        // If we have the full list in state, update it
        if (state is OrderSuccess) {
          final currentState = state as OrderSuccess;
          emit(OrderState.success(
            orders: currentState.orders,
            filteredOrders: orders,
            selectedStatus: status,
            message: response.message,
          ));
        } else {
          // Otherwise just show filtered results
          emit(OrderState.success(
            orders: orders,
            filteredOrders: orders,
            selectedStatus: status,
            message: response.message,
          ));
        }
      } else {
        emit(OrderState.error(
          message: response.message,
        ));
      }
    }
  }

  void filterOrders(String status) {
    if (state is OrderSuccess) {
      final currentState = state as OrderSuccess;
      List<OrderModel> filteredOrders;

      if (status == 'semua') {
        filteredOrders = currentState.orders;
      } else {
        filteredOrders = currentState.orders
            .where((order) => order.status == status)
            .toList();
      }

      emit(OrderState.success(
        orders: currentState.orders,
        filteredOrders: filteredOrders,
        selectedStatus: status,
        message: currentState.message,
      ));
    }
  }

  void searchOrders(String query) {
    if (state is OrderSuccess) {
      final currentState = state as OrderSuccess;
      List<OrderModel> searchResults;

      // Start with the current filtered list based on status
      List<OrderModel> baseList = currentState.selectedStatus == 'semua'
          ? currentState.orders
          : currentState.orders
              .where((order) => order.status == currentState.selectedStatus)
              .toList();

      if (query.isEmpty) {
        searchResults = baseList;
      } else {
        searchResults = baseList
            .where((order) =>
                order.clientName.toLowerCase().contains(query.toLowerCase()) ||
                order.catalog?.name
                        .toLowerCase()
                        .contains(query.toLowerCase()) ==
                    true ||
                order.includedServices.any((service) =>
                    service.toLowerCase().contains(query.toLowerCase())))
            .toList();
      }

      emit(OrderState.success(
        orders: currentState.orders,
        filteredOrders: searchResults,
        selectedStatus: currentState.selectedStatus,
        message: currentState.message,
      ));
    }
  }

  Future<void> cancelOrder(int orderId, {String? reason}) async {
    if (state is! OrderSuccess) return;

    final currentState = state as OrderSuccess;

    final response =
        await _orderRepository.cancelOrder(orderId, reason: reason);

    if (response.status == 'success' && response.data != null) {
      final updatedOrder = response.data as OrderModel;

      // Update the order in the list
      final updatedOrders = currentState.orders.map((order) {
        return order.id == orderId ? updatedOrder : order;
      }).toList();

      // Re-apply current filter
      List<OrderModel> filteredOrders;
      if (currentState.selectedStatus == 'semua') {
        filteredOrders = updatedOrders;
      } else {
        filteredOrders = updatedOrders
            .where((order) => order.status == currentState.selectedStatus)
            .toList();
      }

      emit(OrderState.success(
        orders: updatedOrders,
        filteredOrders: filteredOrders,
        selectedStatus: currentState.selectedStatus,
        message: response.message,
      ));
    } else {
      // Show error but maintain current state
      emit(OrderState.error(message: response.message));
      // Return to previous state after showing error
      emit(currentState);
    }
  }

  Future<void> completeOrder(int orderId) async {
    if (state is! OrderSuccess) return;

    final currentState = state as OrderSuccess;

    final response = await _orderRepository.completeOrder(orderId);

    if (response.status == 'success' && response.data != null) {
      final updatedOrder = response.data as OrderModel;

      // Update the order in the list
      final updatedOrders = currentState.orders.map((order) {
        return order.id == orderId ? updatedOrder : order;
      }).toList();

      // Re-apply current filter
      List<OrderModel> filteredOrders;
      if (currentState.selectedStatus == 'semua') {
        filteredOrders = updatedOrders;
      } else {
        filteredOrders = updatedOrders
            .where((order) => order.status == currentState.selectedStatus)
            .toList();
      }

      emit(OrderState.success(
        orders: updatedOrders,
        filteredOrders: filteredOrders,
        selectedStatus: currentState.selectedStatus,
        message: response.message,
      ));
    } else {
      // Show error but maintain current state
      emit(OrderState.error(message: response.message));
      // Return to previous state after showing error
      emit(currentState);
    }
  }

  Future<void> refreshOrders() async {
    if (state is OrderSuccess) {
      final currentStatus = (state as OrderSuccess).selectedStatus;
      if (currentStatus == 'semua') {
        await getOrders();
      } else {
        await getOrdersByStatus(currentStatus);
      }
    } else {
      await getOrders();
    }
  }

  void resetState() {
    emit(const OrderState.initial());
  }

  // Helper method to get display name for status
  String getStatusDisplayName(String status) {
    return statusDisplayNames[status] ?? status;
  }

  // Helper method to get status color
  Color getStatusColor(String status) {
    switch (status) {
      case 'completed':
        return Colors.green;
      case 'cancelled':
        return Colors.red;
      case 'ongoing':
        return Colors.blue;
      case 'pending_payment':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }
}
