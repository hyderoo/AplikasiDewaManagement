// payment_repository.dart
import 'dart:io';
import 'package:dewa_wo_app/core/api/api_client.dart';
import 'package:dewa_wo_app/models/response/payment_details_response.dart';
import 'package:dewa_wo_app/models/response/payment_response.dart';
import 'package:dewa_wo_app/models/payment_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PaymentRepository {
  final ApiClient _apiClient;

  PaymentRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  Future<PaymentDetailsResponse> getPaymentDetails(int id) async {
    try {
      final response = await _apiClient.get('/payments/$id');
      return PaymentDetailsResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return PaymentDetailsResponse.fromJson(e.response!.data);
        } catch (_) {
          return PaymentDetailsResponse(
            status: 'error',
            message: e.message ?? 'Failed to fetch payment details',
            data: null,
          );
        }
      }
      return PaymentDetailsResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return PaymentDetailsResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Submit bank transfer payment
  Future<PaymentResponse> submitBankTransfer({
    required int orderId,
    required String paymentType,
    required String bankCode,
    required double amount,
    required File paymentProof,
  }) async {
    try {
      final formData = FormData.fromMap({
        'order_id': orderId,
        'payment_type': paymentType,
        'bank_code': bankCode,
        'amount': amount,
        'payment_proof': await MultipartFile.fromFile(
          paymentProof.path,
          filename: paymentProof.path.split('/').last,
        ),
      });

      final response =
          await _apiClient.post('/payments/bank-transfer', data: formData);
      return PaymentResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return PaymentResponse.fromJson(e.response!.data);
        } catch (_) {
          return PaymentResponse(
            status: 'error',
            message: e.message ?? 'Failed to submit payment',
            data: null,
          );
        }
      }
      return PaymentResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return PaymentResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Create virtual account payment
  Future<PaymentResponse> createVirtualAccount({
    required int orderId,
    required String paymentType,
    required String bankCode,
    required double amount,
  }) async {
    try {
      final response =
          await _apiClient.post('/payments/virtual-account', data: {
        'order_id': orderId,
        'payment_type': paymentType,
        'bank_code': bankCode,
        'amount': amount,
      });
      return PaymentResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return PaymentResponse.fromJson(e.response!.data);
        } catch (_) {
          return PaymentResponse(
            status: 'error',
            message: e.message ?? 'Failed to create virtual account',
            data: null,
          );
        }
      }
      return PaymentResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return PaymentResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Check payment status
  Future<PaymentResponse> checkPaymentStatus(int paymentId) async {
    try {
      final response = await _apiClient.get('/payments/$paymentId/status');
      return PaymentResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return PaymentResponse.fromJson(e.response!.data);
        } catch (_) {
          return PaymentResponse(
            status: 'error',
            message: e.message ?? 'Failed to check payment status',
            data: null,
          );
        }
      }
      return PaymentResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return PaymentResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Get payment history
  Future<PaymentResponse> getPaymentHistory(int orderId) async {
    try {
      final response = await _apiClient.get('/payments/history/$orderId');
      if (response.data['data'] != null) {
        // Extract order and payments separately
        final order = response.data['data']['order'];
        final payments = (response.data['data']['payments'] as List)
            .map((payment) => PaymentModel.fromJson(payment))
            .toList();

        return PaymentResponse(
          status: response.data['status'] ?? 'success',
          message: response.data['message'] ??
              'Payment history fetched successfully',
          data: {
            'order': order,
            'payments': payments,
          },
        );
      }
      return PaymentResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return PaymentResponse.fromJson(e.response!.data);
        } catch (_) {
          return PaymentResponse(
            status: 'error',
            message: e.message ?? 'Failed to fetch payment history',
            data: null,
          );
        }
      }
      return PaymentResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return PaymentResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }
}
