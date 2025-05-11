// order_repository.dart
import 'package:dewa_wo_app/core/api/api_client.dart';
import 'package:dewa_wo_app/core/models/bank_model.dart';
import 'package:dewa_wo_app/core/models/order_model.dart';
import 'package:dewa_wo_app/core/models/response/bank_response.dart';
import 'package:dewa_wo_app/core/models/response/order_response.dart';
import 'package:dewa_wo_app/core/models/response/review_response.dart';
import 'package:dewa_wo_app/core/models/response/virtual_account_response.dart';
import 'package:dewa_wo_app/core/models/virtual_account_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class OrderRepository {
  final ApiClient _apiClient;

  OrderRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  // Get all orders
  Future<OrderResponse> getOrders() async {
    try {
      final response = await _apiClient.get('/orders');
      if (response.data['data'] is List) {
        final orders = (response.data['data'] as List)
            .map((order) => OrderModel.fromJson(order))
            .toList();
        return OrderResponse(
          status: response.data['status'] ?? 'success',
          message: response.data['message'] ?? 'Orders fetched successfully',
          data: orders,
        );
      }
      return OrderResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return OrderResponse.fromJson(e.response!.data);
        } catch (_) {
          return OrderResponse(
            status: 'error',
            message: e.message ?? 'Failed to fetch orders',
            data: null,
          );
        }
      }
      return OrderResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return OrderResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Get orders by status
  Future<OrderResponse> getOrdersByStatus(String status) async {
    try {
      final response = await _apiClient.get('/orders/status/$status');
      if (response.data['data'] is List) {
        final orders = (response.data['data'] as List)
            .map((order) => OrderModel.fromJson(order))
            .toList();
        return OrderResponse(
          status: response.data['status'] ?? 'success',
          message: response.data['message'] ?? 'Orders fetched successfully',
          data: orders,
        );
      }
      return OrderResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return OrderResponse.fromJson(e.response!.data);
        } catch (_) {
          return OrderResponse(
            status: 'error',
            message: e.message ?? 'Failed to fetch orders',
            data: null,
          );
        }
      }
      return OrderResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return OrderResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Get order by ID
  Future<OrderResponse> getOrderById(int id) async {
    try {
      final response = await _apiClient.get('/orders/$id');
      if (response.data['data'] != null) {
        final order = OrderModel.fromJson(response.data['data']);
        return OrderResponse(
          status: response.data['status'] ?? 'success',
          message: response.data['message'] ?? 'Order fetched successfully',
          data: order,
        );
      }
      return OrderResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return OrderResponse.fromJson(e.response!.data);
        } catch (_) {
          return OrderResponse(
            status: 'error',
            message: e.message ?? 'Failed to fetch order',
            data: null,
          );
        }
      }
      return OrderResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return OrderResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Create order
  Future<OrderResponse> createOrder(Map<String, dynamic> orderData) async {
    try {
      final response = await _apiClient.post('/orders', data: orderData);
      if (response.data['data'] != null) {
        final order = OrderModel.fromJson(response.data['data']);
        return OrderResponse(
          status: response.data['status'] ?? 'success',
          message: response.data['message'] ?? 'Order created successfully',
          data: order,
        );
      }
      return OrderResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return OrderResponse.fromJson(e.response!.data);
        } catch (_) {
          return OrderResponse(
            status: 'error',
            message: e.message ?? 'Failed to create order',
            data: null,
          );
        }
      }
      return OrderResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return OrderResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Create order
  Future<OrderResponse> createCustomOrder(
      Map<String, dynamic> orderData) async {
    try {
      final response = await _apiClient.post('/orders/custom', data: orderData);
      if (response.data['data'] != null) {
        final order = OrderModel.fromJson(response.data['data']);
        return OrderResponse(
          status: response.data['status'] ?? 'success',
          message: response.data['message'] ?? 'Order created successfully',
          data: order,
        );
      }
      return OrderResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return OrderResponse.fromJson(e.response!.data);
        } catch (_) {
          return OrderResponse(
            status: 'error',
            message: e.message ?? 'Failed to create order',
            data: null,
          );
        }
      }
      return OrderResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return OrderResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Cancel order
  Future<OrderResponse> cancelOrder(int id, {String? reason}) async {
    try {
      final data = reason != null ? {'reason': reason} : null;
      final response = await _apiClient.put('/orders/$id/cancel', data: data);
      if (response.data['data'] != null) {
        final order = OrderModel.fromJson(response.data['data']);
        return OrderResponse(
          status: response.data['status'] ?? 'success',
          message: response.data['message'] ?? 'Order cancelled successfully',
          data: order,
        );
      }
      return OrderResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return OrderResponse.fromJson(e.response!.data);
        } catch (_) {
          return OrderResponse(
            status: 'error',
            message: e.message ?? 'Failed to cancel order',
            data: null,
          );
        }
      }
      return OrderResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return OrderResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Complete order
  Future<OrderResponse> completeOrder(int id) async {
    try {
      final response = await _apiClient.put('/orders/$id/complete');
      if (response.data['data'] != null) {
        final order = OrderModel.fromJson(response.data['data']);
        return OrderResponse(
          status: response.data['status'] ?? 'success',
          message: response.data['message'] ?? 'Order completed successfully',
          data: order,
        );
      }
      return OrderResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return OrderResponse.fromJson(e.response!.data);
        } catch (_) {
          return OrderResponse(
            status: 'error',
            message: e.message ?? 'Failed to complete order',
            data: null,
          );
        }
      }
      return OrderResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return OrderResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Submit review
  Future<ReviewResponse> submitReview(
      int orderId, Map<String, dynamic> reviewData) async {
    try {
      final response =
          await _apiClient.post('/orders/$orderId/review', data: reviewData);
      return ReviewResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return ReviewResponse.fromJson(e.response!.data);
        } catch (_) {
          return ReviewResponse(
            status: 'error',
            message: e.message ?? 'Failed to submit review',
            data: null,
          );
        }
      }
      return ReviewResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return ReviewResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Get all banks
  Future<BankResponse> getBanks() async {
    try {
      final response = await _apiClient.get('/banks');
      if (response.data['data'] is List) {
        final banks = (response.data['data'] as List)
            .map((bank) => BankModel.fromJson(bank))
            .toList();
        return BankResponse(
          status: response.data['status'] ?? 'success',
          message: response.data['message'] ?? 'Banks fetched successfully',
          data: banks,
        );
      }
      return BankResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return BankResponse.fromJson(e.response!.data);
        } catch (_) {
          return BankResponse(
            status: 'error',
            message: e.message ?? 'Failed to fetch banks',
            data: null,
          );
        }
      }
      return BankResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return BankResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Get all virtual accounts
  Future<VirtualAccountResponse> getVirtualAccounts() async {
    try {
      final response = await _apiClient.get('/va');
      if (response.data['data'] is List) {
        final virtualAccounts = (response.data['data'] as List)
            .map((va) => VirtualAccountModel.fromJson(va))
            .toList();
        return VirtualAccountResponse(
          status: response.data['status'] ?? 'success',
          message: response.data['message'] ??
              'Virtual accounts fetched successfully',
          data: virtualAccounts,
        );
      }
      return VirtualAccountResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return VirtualAccountResponse.fromJson(e.response!.data);
        } catch (_) {
          return VirtualAccountResponse(
            status: 'error',
            message: e.message ?? 'Failed to fetch virtual accounts',
            data: null,
          );
        }
      }
      return VirtualAccountResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return VirtualAccountResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }
}
