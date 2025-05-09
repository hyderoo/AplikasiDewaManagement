// lib/core/api/api_client.dart
import 'package:dewa_wo_app/core/consts/app_consts.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_ce/hive.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiClient {
  static const String _authBoxName = 'auth_box';
  static const String _tokenKey = 'auth_token';

  final Dio _dio;

  ApiClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: AppConsts.apiUrl,
            contentType: 'application/json',
            headers: {
              'Accept': 'application/json',
            },
            validateStatus: (status) {
              return status! < 500;
            },
          ),
        ) {
    _setupInterceptors();
  }

  void _setupInterceptors() {
    // Add auth interceptor
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Get token directly from Hive
          final token = await _getTokenFromStorage();

          // If token exists, add it to headers
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }

          return handler.next(options);
        },
      ),
    );

    // Add logging interceptor in debug mode
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
    }
  }

  Future<String?> _getTokenFromStorage() async {
    try {
      // Check if the box is open
      if (!Hive.isBoxOpen(_authBoxName)) {
        await Hive.openBox<dynamic>(_authBoxName);
      }

      final box = Hive.box<dynamic>(_authBoxName);
      return box.get(_tokenKey) as String?;
    } catch (e) {
      // Handle case where Hive may not be initialized yet or other errors
      return null;
    }
  }

  // GET request
  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) {
    return _dio.get(path, queryParameters: queryParameters);
  }

  // POST request
  Future<Response> post(String path, {dynamic data}) {
    return _dio.post(path, data: data);
  }

  // PUT request
  Future<Response> put(String path, {dynamic data}) {
    return _dio.put(path, data: data);
  }

  // DELETE request
  Future<Response> delete(String path) {
    return _dio.delete(path);
  }
}
