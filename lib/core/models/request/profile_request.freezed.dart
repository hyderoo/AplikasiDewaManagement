// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProfileRequest {
  String get name;
  String get email;
  String get phone;
  String? get avatar;

  /// Create a copy of UpdateProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateProfileRequestCopyWith<UpdateProfileRequest> get copyWith =>
      _$UpdateProfileRequestCopyWithImpl<UpdateProfileRequest>(
          this as UpdateProfileRequest, _$identity);

  /// Serializes this UpdateProfileRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateProfileRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, phone, avatar);

  @override
  String toString() {
    return 'UpdateProfileRequest(name: $name, email: $email, phone: $phone, avatar: $avatar)';
  }
}

/// @nodoc
abstract mixin class $UpdateProfileRequestCopyWith<$Res> {
  factory $UpdateProfileRequestCopyWith(UpdateProfileRequest value,
          $Res Function(UpdateProfileRequest) _then) =
      _$UpdateProfileRequestCopyWithImpl;
  @useResult
  $Res call({String name, String email, String phone, String? avatar});
}

/// @nodoc
class _$UpdateProfileRequestCopyWithImpl<$Res>
    implements $UpdateProfileRequestCopyWith<$Res> {
  _$UpdateProfileRequestCopyWithImpl(this._self, this._then);

  final UpdateProfileRequest _self;
  final $Res Function(UpdateProfileRequest) _then;

  /// Create a copy of UpdateProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? avatar = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateProfileRequest implements UpdateProfileRequest {
  const _UpdateProfileRequest(
      {required this.name,
      required this.email,
      required this.phone,
      required this.avatar});
  factory _UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String? avatar;

  /// Create a copy of UpdateProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateProfileRequestCopyWith<_UpdateProfileRequest> get copyWith =>
      __$UpdateProfileRequestCopyWithImpl<_UpdateProfileRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateProfileRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProfileRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, phone, avatar);

  @override
  String toString() {
    return 'UpdateProfileRequest(name: $name, email: $email, phone: $phone, avatar: $avatar)';
  }
}

/// @nodoc
abstract mixin class _$UpdateProfileRequestCopyWith<$Res>
    implements $UpdateProfileRequestCopyWith<$Res> {
  factory _$UpdateProfileRequestCopyWith(_UpdateProfileRequest value,
          $Res Function(_UpdateProfileRequest) _then) =
      __$UpdateProfileRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String email, String phone, String? avatar});
}

/// @nodoc
class __$UpdateProfileRequestCopyWithImpl<$Res>
    implements _$UpdateProfileRequestCopyWith<$Res> {
  __$UpdateProfileRequestCopyWithImpl(this._self, this._then);

  final _UpdateProfileRequest _self;
  final $Res Function(_UpdateProfileRequest) _then;

  /// Create a copy of UpdateProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? avatar = freezed,
  }) {
    return _then(_UpdateProfileRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ChangePasswordRequest {
  @JsonKey(name: 'current_password')
  String get currentPassword;
  String get password;
  @JsonKey(name: 'password_confirmation')
  String get passwordConfirmation;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangePasswordRequestCopyWith<ChangePasswordRequest> get copyWith =>
      _$ChangePasswordRequestCopyWithImpl<ChangePasswordRequest>(
          this as ChangePasswordRequest, _$identity);

  /// Serializes this ChangePasswordRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePasswordRequest &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPassword, password, passwordConfirmation);

  @override
  String toString() {
    return 'ChangePasswordRequest(currentPassword: $currentPassword, password: $password, passwordConfirmation: $passwordConfirmation)';
  }
}

/// @nodoc
abstract mixin class $ChangePasswordRequestCopyWith<$Res> {
  factory $ChangePasswordRequestCopyWith(ChangePasswordRequest value,
          $Res Function(ChangePasswordRequest) _then) =
      _$ChangePasswordRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_password') String currentPassword,
      String password,
      @JsonKey(name: 'password_confirmation') String passwordConfirmation});
}

/// @nodoc
class _$ChangePasswordRequestCopyWithImpl<$Res>
    implements $ChangePasswordRequestCopyWith<$Res> {
  _$ChangePasswordRequestCopyWithImpl(this._self, this._then);

  final ChangePasswordRequest _self;
  final $Res Function(ChangePasswordRequest) _then;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(_self.copyWith(
      currentPassword: null == currentPassword
          ? _self.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _self.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChangePasswordRequest implements ChangePasswordRequest {
  const _ChangePasswordRequest(
      {@JsonKey(name: 'current_password') required this.currentPassword,
      required this.password,
      @JsonKey(name: 'password_confirmation')
      required this.passwordConfirmation});
  factory _ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);

  @override
  @JsonKey(name: 'current_password')
  final String currentPassword;
  @override
  final String password;
  @override
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChangePasswordRequestCopyWith<_ChangePasswordRequest> get copyWith =>
      __$ChangePasswordRequestCopyWithImpl<_ChangePasswordRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChangePasswordRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePasswordRequest &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPassword, password, passwordConfirmation);

  @override
  String toString() {
    return 'ChangePasswordRequest(currentPassword: $currentPassword, password: $password, passwordConfirmation: $passwordConfirmation)';
  }
}

/// @nodoc
abstract mixin class _$ChangePasswordRequestCopyWith<$Res>
    implements $ChangePasswordRequestCopyWith<$Res> {
  factory _$ChangePasswordRequestCopyWith(_ChangePasswordRequest value,
          $Res Function(_ChangePasswordRequest) _then) =
      __$ChangePasswordRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_password') String currentPassword,
      String password,
      @JsonKey(name: 'password_confirmation') String passwordConfirmation});
}

/// @nodoc
class __$ChangePasswordRequestCopyWithImpl<$Res>
    implements _$ChangePasswordRequestCopyWith<$Res> {
  __$ChangePasswordRequestCopyWithImpl(this._self, this._then);

  final _ChangePasswordRequest _self;
  final $Res Function(_ChangePasswordRequest) _then;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentPassword = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(_ChangePasswordRequest(
      currentPassword: null == currentPassword
          ? _self.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _self.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$DeleteAccountRequest {
  String get password;

  /// Create a copy of DeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteAccountRequestCopyWith<DeleteAccountRequest> get copyWith =>
      _$DeleteAccountRequestCopyWithImpl<DeleteAccountRequest>(
          this as DeleteAccountRequest, _$identity);

  /// Serializes this DeleteAccountRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteAccountRequest &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'DeleteAccountRequest(password: $password)';
  }
}

/// @nodoc
abstract mixin class $DeleteAccountRequestCopyWith<$Res> {
  factory $DeleteAccountRequestCopyWith(DeleteAccountRequest value,
          $Res Function(DeleteAccountRequest) _then) =
      _$DeleteAccountRequestCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$DeleteAccountRequestCopyWithImpl<$Res>
    implements $DeleteAccountRequestCopyWith<$Res> {
  _$DeleteAccountRequestCopyWithImpl(this._self, this._then);

  final DeleteAccountRequest _self;
  final $Res Function(DeleteAccountRequest) _then;

  /// Create a copy of DeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DeleteAccountRequest implements DeleteAccountRequest {
  const _DeleteAccountRequest({required this.password});
  factory _DeleteAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteAccountRequestFromJson(json);

  @override
  final String password;

  /// Create a copy of DeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeleteAccountRequestCopyWith<_DeleteAccountRequest> get copyWith =>
      __$DeleteAccountRequestCopyWithImpl<_DeleteAccountRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeleteAccountRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteAccountRequest &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'DeleteAccountRequest(password: $password)';
  }
}

/// @nodoc
abstract mixin class _$DeleteAccountRequestCopyWith<$Res>
    implements $DeleteAccountRequestCopyWith<$Res> {
  factory _$DeleteAccountRequestCopyWith(_DeleteAccountRequest value,
          $Res Function(_DeleteAccountRequest) _then) =
      __$DeleteAccountRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$DeleteAccountRequestCopyWithImpl<$Res>
    implements _$DeleteAccountRequestCopyWith<$Res> {
  __$DeleteAccountRequestCopyWithImpl(this._self, this._then);

  final _DeleteAccountRequest _self;
  final $Res Function(_DeleteAccountRequest) _then;

  /// Create a copy of DeleteAccountRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(_DeleteAccountRequest(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
