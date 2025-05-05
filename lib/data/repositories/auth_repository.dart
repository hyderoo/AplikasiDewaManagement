import 'package:dewa_wo_app/core/api/api_client.dart';
import 'package:dewa_wo_app/models/auth_response.dart';
import 'package:dewa_wo_app/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:hive_ce/hive.dart';

class AuthRepository {
  static const String _authBoxName = 'auth_box';
  static const String _userKey = 'current_user';
  static const String _tokenKey = 'auth_token';

  final ApiClient _apiClient;
  late Box<dynamic> _authBox;

  AuthRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  // Initialize Hive and open auth box
  Future<void> init() async {
    // Register adapters if not already registered
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(UserModelAdapter());
    }

    _authBox = await Hive.openBox<dynamic>(_authBoxName);

    // Update API client with stored token if exists
    final token = getToken();
    if (token != null) {
      _apiClient.updateToken(token);
    }
  }

  // Login user
  Future<AuthResponse> login(
      {required String email, required String password}) async {
    try {
      final response = await _apiClient.post('/login', data: {
        'email': email,
        'password': password,
      });

      final authResponse = AuthResponse.fromJson(response.data);

      if (authResponse.status == 'success' &&
          authResponse.data != null &&
          authResponse.data!.user != null &&
          authResponse.data!.token != null) {
        // Save user and token in local storage
        await saveUser(authResponse.data!.user!);
        await saveToken(authResponse.data!.token!);

        // Update API client with new token
        _apiClient.updateToken(authResponse.data!.token!);
      }

      return authResponse;
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          // Try to parse error response
          return AuthResponse.fromJson(e.response!.data);
        } catch (_) {
          // Fallback if parsing fails
          return AuthResponse(
            status: 'error',
            message: e.message ?? 'An error occurred during login',
            data: null,
          );
        }
      }

      // Network or other error
      return AuthResponse(
        status: 'error',
        message: e.message ?? 'Network error occurred',
        data: null,
      );
    } catch (e) {
      return AuthResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Register user
  Future<AuthResponse> register({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      final response = await _apiClient.post('/register', data: {
        'name': name,
        'email': email,
        'phone': phone,
        'password': password,
        'password_confirmation': passwordConfirmation,
      });

      final authResponse = AuthResponse.fromJson(response.data);

      if (authResponse.status == 'success' &&
          authResponse.data != null &&
          authResponse.data!.user != null &&
          authResponse.data!.token != null) {
        // Save user and token in local storage
        await saveUser(authResponse.data!.user!);
        await saveToken(authResponse.data!.token!);

        // Update API client with new token
        _apiClient.updateToken(authResponse.data!.token!);
      }

      return authResponse;
    } on DioException catch (e) {
      if (e.response != null && e.response!.statusCode == 422) {
        try {
          // Handle validation errors
          final errorResponse =
              ValidationErrorResponse.fromJson(e.response!.data);
          final errorMessage = errorResponse.errors.entries
              .map((e) => e.value.join(', '))
              .join('\n');

          return AuthResponse(
            status: 'error',
            message: errorMessage,
            data: null,
          );
        } catch (_) {
          // Fallback if parsing fails
          return AuthResponse(
            status: 'error',
            message: 'Validation failed',
            data: null,
          );
        }
      }

      // Other errors
      return AuthResponse(
        status: 'error',
        message: e.message ?? 'An error occurred during registration',
        data: null,
      );
    } catch (e) {
      return AuthResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Logout user
  Future<AuthResponse> logout() async {
    try {
      final response = await _apiClient.post('/logout');
      final authResponse = AuthResponse.fromJson(response.data);

      // Clear local storage and API client token
      await clearAuthData();
      _apiClient.removeToken();

      return authResponse;
    } catch (_) {
      // Even if API call fails, clear local data
      await clearAuthData();
      _apiClient.removeToken();

      return const AuthResponse(
        status: 'success',
        message: 'Logged out successfully',
        data: null,
      );
    }
  }

  // Get current user from API
  Future<AuthResponse> getCurrentUser() async {
    try {
      final response = await _apiClient.get('/user');
      final authResponse = AuthResponse.fromJson(response.data);

      if (authResponse.status == 'success' &&
          authResponse.data != null &&
          authResponse.data!.user != null) {
        // Update stored user data
        await saveUser(authResponse.data!.user!);
      }

      return authResponse;
    } on DioException catch (e) {
      if (e.response != null && e.response!.statusCode == 401) {
        // If unauthorized, clear local data
        await clearAuthData();
        _apiClient.removeToken();
      }

      return AuthResponse(
        status: 'error',
        message: e.message ?? 'Failed to get user data',
        data: null,
      );
    } catch (e) {
      return AuthResponse(
        status: 'error',
        message: e.toString(),
        data: null,
      );
    }
  }

  // Save user to local storage
  Future<void> saveUser(UserModel user) async {
    await _authBox.put(_userKey, user);
  }

  // Get current user from local storage
  UserModel? getUser() {
    return _authBox.get(_userKey) as UserModel?;
  }

  // Save token to local storage
  Future<void> saveToken(String token) async {
    await _authBox.put(_tokenKey, token);
  }

  // Get token from local storage
  String? getToken() {
    return _authBox.get(_tokenKey) as String?;
  }

  // Check if user is logged in
  bool isLoggedIn() {
    return getToken() != null;
  }

  // Clear auth data (for logout)
  Future<void> clearAuthData() async {
    await _authBox.delete(_userKey);
    await _authBox.delete(_tokenKey);
  }

  // Close Hive box
  Future<void> close() async {
    await _authBox.close();
  }
}
