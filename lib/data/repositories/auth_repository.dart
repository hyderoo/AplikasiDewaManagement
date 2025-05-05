import 'package:dewa_wo_app/core/api/api_client.dart';
import 'package:dewa_wo_app/models/response/auth_response.dart';
import 'package:dewa_wo_app/models/response/validation_error_response.dart';
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

  Future<void> init() async {
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(UserModelAdapter());
    }

    _authBox = await Hive.openBox<dynamic>(_authBoxName);

    final token = getToken();
    if (token != null) {
      _apiClient.updateToken(token);
    }
  }

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
        await saveUser(authResponse.data!.user!);
        await saveToken(authResponse.data!.token!);

        _apiClient.updateToken(authResponse.data!.token!);
      }

      return authResponse;
    } on DioException catch (e) {
      if (e.response != null) {
        try {
          return AuthResponse.fromJson(e.response!.data);
        } catch (_) {
          return AuthResponse(
            status: 'error',
            message: e.message ?? 'An error occurred during login',
            data: null,
          );
        }
      }

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
        await saveUser(authResponse.data!.user!);
        await saveToken(authResponse.data!.token!);

        _apiClient.updateToken(authResponse.data!.token!);
      }

      return authResponse;
    } on DioException catch (e) {
      if (e.response != null && e.response!.statusCode == 422) {
        try {
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
          return AuthResponse(
            status: 'error',
            message: 'Validation failed',
            data: null,
          );
        }
      }

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

  Future<AuthResponse> logout() async {
    try {
      final response = await _apiClient.post('/logout');
      final authResponse = AuthResponse.fromJson(response.data);

      await clearAuthData();
      _apiClient.removeToken();

      return authResponse;
    } catch (_) {
      await clearAuthData();
      _apiClient.removeToken();

      return const AuthResponse(
        status: 'success',
        message: 'Logged out successfully',
        data: null,
      );
    }
  }

  Future<AuthResponse> getCurrentUser() async {
    try {
      final response = await _apiClient.get('/user');
      final authResponse = AuthResponse.fromJson(response.data);

      if (authResponse.status == 'success' &&
          authResponse.data != null &&
          authResponse.data!.user != null) {
        await saveUser(authResponse.data!.user!);
      }

      return authResponse;
    } on DioException catch (e) {
      if (e.response != null && e.response!.statusCode == 401) {
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

  Future<void> saveUser(UserModel user) async {
    await _authBox.put(_userKey, user);
  }

  UserModel? getUser() {
    return _authBox.get(_userKey) as UserModel?;
  }

  Future<void> saveToken(String token) async {
    await _authBox.put(_tokenKey, token);
  }

  String? getToken() {
    return _authBox.get(_tokenKey) as String?;
  }

  bool isLoggedIn() {
    return getToken() != null;
  }

  Future<void> clearAuthData() async {
    await _authBox.delete(_userKey);
    await _authBox.delete(_tokenKey);
  }

  Future<void> close() async {
    await _authBox.close();
  }
}
