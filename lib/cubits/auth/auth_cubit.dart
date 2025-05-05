import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/data/repositories/auth_repository.dart';
import 'package:dewa_wo_app/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;

  AuthCubit({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthState.initial());

  // Check current authentication status
  Future<void> checkAuthStatus() async {
    final token = _authRepository.getToken();
    final user = _authRepository.getUser();

    if (token != null && user != null) {
      emit(AuthState.authenticated(user: user, token: token));
    } else {
      emit(const AuthState.unauthenticated());
    }
  }

  // Login user
  Future<void> login({required String email, required String password}) async {
    emit(const AuthState.loading());

    final response = await _authRepository.login(
      email: email,
      password: password,
    );

    if (response.status == 'success' &&
        response.data != null &&
        response.data!.user != null &&
        response.data!.token != null) {
      emit(AuthState.authenticated(
        user: response.data!.user!,
        token: response.data!.token!,
      ));
    } else {
      emit(AuthState.error(message: response.message));
    }
  }

  // Register user
  Future<void> register({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String passwordConfirmation,
  }) async {
    emit(const AuthState.loading());

    final response = await _authRepository.register(
      name: name,
      email: email,
      phone: phone,
      password: password,
      passwordConfirmation: passwordConfirmation,
    );

    if (response.status == 'success' &&
        response.data != null &&
        response.data!.user != null &&
        response.data!.token != null) {
      emit(AuthState.authenticated(
        user: response.data!.user!,
        token: response.data!.token!,
      ));
    } else {
      emit(AuthState.error(message: response.message));
    }
  }

  // Logout user
  Future<void> logout() async {
    emit(const AuthState.loading());

    await _authRepository.logout();
    emit(const AuthState.unauthenticated());
  }

  // Refresh user data
  Future<void> refreshUserData() async {
    final currentState = state;
    if (currentState is AuthAuthenticated) {
      final response = await _authRepository.getCurrentUser();

      if (response.status == 'success' &&
          response.data != null &&
          response.data!.user != null) {
        emit(AuthState.authenticated(
          user: response.data!.user!,
          token: currentState.token,
        ));
      } else if (response.status == 'error') {
        // If token is invalid or expired
        emit(const AuthState.unauthenticated());
      }
    }
  }
}
