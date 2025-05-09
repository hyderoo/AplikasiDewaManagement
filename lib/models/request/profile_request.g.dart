// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProfileRequest _$UpdateProfileRequestFromJson(
        Map<String, dynamic> json) =>
    _UpdateProfileRequest(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$UpdateProfileRequestToJson(
        _UpdateProfileRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'avatar': instance.avatar,
    };

_ChangePasswordRequest _$ChangePasswordRequestFromJson(
        Map<String, dynamic> json) =>
    _ChangePasswordRequest(
      currentPassword: json['current_password'] as String,
      password: json['password'] as String,
      passwordConfirmation: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$ChangePasswordRequestToJson(
        _ChangePasswordRequest instance) =>
    <String, dynamic>{
      'current_password': instance.currentPassword,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
    };

_DeleteAccountRequest _$DeleteAccountRequestFromJson(
        Map<String, dynamic> json) =>
    _DeleteAccountRequest(
      password: json['password'] as String,
    );

Map<String, dynamic> _$DeleteAccountRequestToJson(
        _DeleteAccountRequest instance) =>
    <String, dynamic>{
      'password': instance.password,
    };
