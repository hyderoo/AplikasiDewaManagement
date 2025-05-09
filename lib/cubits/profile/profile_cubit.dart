import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/data/repositories/profile_repository.dart';
import 'package:dewa_wo_app/models/request/profile_request.dart';
import 'package:dewa_wo_app/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

@lazySingleton
class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository _profileRepository;

  ProfileCubit({required ProfileRepository profileRepository})
      : _profileRepository = profileRepository,
        super(const ProfileState.initial());

  UserModel? getCurrentUser() {
    return _profileRepository.getCurrentUser();
  }

  Future<void> updateProfile({
    required String name,
    required String email,
    required String phone,
    required String? avatar,
  }) async {
    emit(const ProfileState.loading());

    final request = UpdateProfileRequest(
      name: name,
      email: email,
      phone: phone,
      avatar: avatar,
    );

    final response = await _profileRepository.updateProfile(request: request);

    if (response.status == 'success') {
      emit(ProfileState.success(
        message: response.message,
        user: response.data,
      ));
    } else {
      emit(ProfileState.error(message: response.message));
    }
  }

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    emit(const ProfileState.passwordChangeLoading());

    final request = ChangePasswordRequest(
      currentPassword: currentPassword,
      password: newPassword,
      passwordConfirmation: confirmPassword,
    );

    final response = await _profileRepository.changePassword(request: request);

    if (response.status == 'success') {
      emit(ProfileState.passwordChangeSuccess(message: response.message));
    } else {
      emit(ProfileState.passwordChangeError(message: response.message));
    }
  }

  Future<void> deleteAccount({
    required String password,
  }) async {
    emit(const ProfileState.deleteAccountLoading());

    final request = DeleteAccountRequest(
      password: password,
    );

    final response = await _profileRepository.deleteAccount(request: request);

    if (response.status == 'success') {
      emit(ProfileState.deleteAccountSuccess(message: response.message));
    } else {
      emit(ProfileState.deleteAccountError(message: response.message));
    }
  }

  void resetState() {
    emit(const ProfileState.initial());
  }
}
