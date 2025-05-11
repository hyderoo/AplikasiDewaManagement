// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenericResponse {
  String get status;
  String get message;
  UserModel? get data;

  /// Create a copy of GenericResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GenericResponseCopyWith<GenericResponse> get copyWith =>
      _$GenericResponseCopyWithImpl<GenericResponse>(
          this as GenericResponse, _$identity);

  /// Serializes this GenericResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenericResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @override
  String toString() {
    return 'GenericResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $GenericResponseCopyWith<$Res> {
  factory $GenericResponseCopyWith(
          GenericResponse value, $Res Function(GenericResponse) _then) =
      _$GenericResponseCopyWithImpl;
  @useResult
  $Res call({String status, String message, UserModel? data});

  $UserModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$GenericResponseCopyWithImpl<$Res>
    implements $GenericResponseCopyWith<$Res> {
  _$GenericResponseCopyWithImpl(this._self, this._then);

  final GenericResponse _self;
  final $Res Function(GenericResponse) _then;

  /// Create a copy of GenericResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of GenericResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GenericResponse implements GenericResponse {
  const _GenericResponse(
      {required this.status, required this.message, this.data});
  factory _GenericResponse.fromJson(Map<String, dynamic> json) =>
      _$GenericResponseFromJson(json);

  @override
  final String status;
  @override
  final String message;
  @override
  final UserModel? data;

  /// Create a copy of GenericResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GenericResponseCopyWith<_GenericResponse> get copyWith =>
      __$GenericResponseCopyWithImpl<_GenericResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GenericResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenericResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @override
  String toString() {
    return 'GenericResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$GenericResponseCopyWith<$Res>
    implements $GenericResponseCopyWith<$Res> {
  factory _$GenericResponseCopyWith(
          _GenericResponse value, $Res Function(_GenericResponse) _then) =
      __$GenericResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, UserModel? data});

  @override
  $UserModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$GenericResponseCopyWithImpl<$Res>
    implements _$GenericResponseCopyWith<$Res> {
  __$GenericResponseCopyWithImpl(this._self, this._then);

  final _GenericResponse _self;
  final $Res Function(_GenericResponse) _then;

  /// Create a copy of GenericResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_GenericResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of GenericResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
