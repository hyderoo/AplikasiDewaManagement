// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileState()';
  }
}

/// @nodoc
class $ProfileStateCopyWith<$Res> {
  $ProfileStateCopyWith(ProfileState _, $Res Function(ProfileState) __);
}

/// @nodoc

class ProfileInitial implements ProfileState {
  const ProfileInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileState.initial()';
  }
}

/// @nodoc

class ProfileLoading implements ProfileState {
  const ProfileLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileState.loading()';
  }
}

/// @nodoc

class ProfileSuccess implements ProfileState {
  const ProfileSuccess({required this.message, this.user});

  final String message;
  final UserModel? user;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileSuccessCopyWith<ProfileSuccess> get copyWith =>
      _$ProfileSuccessCopyWithImpl<ProfileSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileSuccess &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, user);

  @override
  String toString() {
    return 'ProfileState.success(message: $message, user: $user)';
  }
}

/// @nodoc
abstract mixin class $ProfileSuccessCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory $ProfileSuccessCopyWith(
          ProfileSuccess value, $Res Function(ProfileSuccess) _then) =
      _$ProfileSuccessCopyWithImpl;
  @useResult
  $Res call({String message, UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileSuccessCopyWithImpl<$Res>
    implements $ProfileSuccessCopyWith<$Res> {
  _$ProfileSuccessCopyWithImpl(this._self, this._then);

  final ProfileSuccess _self;
  final $Res Function(ProfileSuccess) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? user = freezed,
  }) {
    return _then(ProfileSuccess(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc

class ProfileError implements ProfileState {
  const ProfileError({required this.message});

  final String message;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileErrorCopyWith<ProfileError> get copyWith =>
      _$ProfileErrorCopyWithImpl<ProfileError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ProfileState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ProfileErrorCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory $ProfileErrorCopyWith(
          ProfileError value, $Res Function(ProfileError) _then) =
      _$ProfileErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ProfileErrorCopyWithImpl<$Res> implements $ProfileErrorCopyWith<$Res> {
  _$ProfileErrorCopyWithImpl(this._self, this._then);

  final ProfileError _self;
  final $Res Function(ProfileError) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ProfileError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class PasswordChangeLoading implements ProfileState {
  const PasswordChangeLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PasswordChangeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileState.passwordChangeLoading()';
  }
}

/// @nodoc

class PasswordChangeSuccess implements ProfileState {
  const PasswordChangeSuccess({required this.message});

  final String message;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PasswordChangeSuccessCopyWith<PasswordChangeSuccess> get copyWith =>
      _$PasswordChangeSuccessCopyWithImpl<PasswordChangeSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChangeSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ProfileState.passwordChangeSuccess(message: $message)';
  }
}

/// @nodoc
abstract mixin class $PasswordChangeSuccessCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory $PasswordChangeSuccessCopyWith(PasswordChangeSuccess value,
          $Res Function(PasswordChangeSuccess) _then) =
      _$PasswordChangeSuccessCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$PasswordChangeSuccessCopyWithImpl<$Res>
    implements $PasswordChangeSuccessCopyWith<$Res> {
  _$PasswordChangeSuccessCopyWithImpl(this._self, this._then);

  final PasswordChangeSuccess _self;
  final $Res Function(PasswordChangeSuccess) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(PasswordChangeSuccess(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class PasswordChangeError implements ProfileState {
  const PasswordChangeError({required this.message});

  final String message;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PasswordChangeErrorCopyWith<PasswordChangeError> get copyWith =>
      _$PasswordChangeErrorCopyWithImpl<PasswordChangeError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChangeError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ProfileState.passwordChangeError(message: $message)';
  }
}

/// @nodoc
abstract mixin class $PasswordChangeErrorCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory $PasswordChangeErrorCopyWith(
          PasswordChangeError value, $Res Function(PasswordChangeError) _then) =
      _$PasswordChangeErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$PasswordChangeErrorCopyWithImpl<$Res>
    implements $PasswordChangeErrorCopyWith<$Res> {
  _$PasswordChangeErrorCopyWithImpl(this._self, this._then);

  final PasswordChangeError _self;
  final $Res Function(PasswordChangeError) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(PasswordChangeError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DeleteAccountLoading implements ProfileState {
  const DeleteAccountLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteAccountLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileState.deleteAccountLoading()';
  }
}

/// @nodoc

class DeleteAccountSuccess implements ProfileState {
  const DeleteAccountSuccess({required this.message});

  final String message;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteAccountSuccessCopyWith<DeleteAccountSuccess> get copyWith =>
      _$DeleteAccountSuccessCopyWithImpl<DeleteAccountSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteAccountSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ProfileState.deleteAccountSuccess(message: $message)';
  }
}

/// @nodoc
abstract mixin class $DeleteAccountSuccessCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory $DeleteAccountSuccessCopyWith(DeleteAccountSuccess value,
          $Res Function(DeleteAccountSuccess) _then) =
      _$DeleteAccountSuccessCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DeleteAccountSuccessCopyWithImpl<$Res>
    implements $DeleteAccountSuccessCopyWith<$Res> {
  _$DeleteAccountSuccessCopyWithImpl(this._self, this._then);

  final DeleteAccountSuccess _self;
  final $Res Function(DeleteAccountSuccess) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(DeleteAccountSuccess(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DeleteAccountError implements ProfileState {
  const DeleteAccountError({required this.message});

  final String message;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteAccountErrorCopyWith<DeleteAccountError> get copyWith =>
      _$DeleteAccountErrorCopyWithImpl<DeleteAccountError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteAccountError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ProfileState.deleteAccountError(message: $message)';
  }
}

/// @nodoc
abstract mixin class $DeleteAccountErrorCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory $DeleteAccountErrorCopyWith(
          DeleteAccountError value, $Res Function(DeleteAccountError) _then) =
      _$DeleteAccountErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DeleteAccountErrorCopyWithImpl<$Res>
    implements $DeleteAccountErrorCopyWith<$Res> {
  _$DeleteAccountErrorCopyWithImpl(this._self, this._then);

  final DeleteAccountError _self;
  final $Res Function(DeleteAccountError) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(DeleteAccountError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
