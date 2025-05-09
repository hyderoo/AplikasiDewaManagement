import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_request.freezed.dart';
part 'profile_request.g.dart';

@freezed
abstract class UpdateProfileRequest with _$UpdateProfileRequest {
  const factory UpdateProfileRequest({
    required String name,
    required String email,
    required String phone,
    required String? avatar,
  }) = _UpdateProfileRequest;

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestFromJson(json);
}

@freezed
abstract class ChangePasswordRequest with _$ChangePasswordRequest {
  const factory ChangePasswordRequest({
    @JsonKey(name: 'current_password') required String currentPassword,
    required String password,
    @JsonKey(name: 'password_confirmation')
    required String passwordConfirmation,
  }) = _ChangePasswordRequest;

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);
}

@freezed
abstract class DeleteAccountRequest with _$DeleteAccountRequest {
  const factory DeleteAccountRequest({
    required String password,
  }) = _DeleteAccountRequest;

  factory DeleteAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteAccountRequestFromJson(json);
}
