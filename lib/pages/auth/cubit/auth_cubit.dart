import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/core/repositories/auth_repository.dart';
import 'package:dewa_wo_app/core/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;

  AuthCubit({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthState.initial());

  Future<void> checkAuthStatus() async {
    final token = _authRepository.getToken();
    final user = _authRepository.getUser();

    if (token != null && user != null) {
      emit(AuthState.authenticated(user: user));
    } else {
      emit(const AuthState.unauthenticated());
    }
  }

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
      emit(AuthState.authenticated(user: response.data!.user!));
    } else {
      emit(AuthState.error(message: response.message));
    }
  }

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
      emit(AuthState.authenticated(user: response.data!.user!));
    } else {
      emit(AuthState.error(message: response.message));
    }
  }

  Future<void> logout() async {
    emit(const AuthState.loading());

    await _authRepository.logout();
    emit(const AuthState.unauthenticated());
  }

  Future<void> refreshUserData() async {
    final currentState = state;
    if (currentState is AuthAuthenticated) {
      final response = await _authRepository.getCurrentUser();

      if (response.status == 'success' && response.data != null) {
        emit(AuthState.initial());
        emit(AuthState.authenticated(user: response.data!));
      } else if (response.status == 'error') {
        emit(const AuthState.unauthenticated());
      }
    }
  }
}
