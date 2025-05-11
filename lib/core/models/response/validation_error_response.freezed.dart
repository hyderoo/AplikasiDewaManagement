// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationErrorResponse {
  String get status;
  String get message;
  Map<String, List<String>> get errors;

  /// Create a copy of ValidationErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationErrorResponseCopyWith<ValidationErrorResponse> get copyWith =>
      _$ValidationErrorResponseCopyWithImpl<ValidationErrorResponse>(
          this as ValidationErrorResponse, _$identity);

  /// Serializes this ValidationErrorResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationErrorResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(errors));

  @override
  String toString() {
    return 'ValidationErrorResponse(status: $status, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class $ValidationErrorResponseCopyWith<$Res> {
  factory $ValidationErrorResponseCopyWith(ValidationErrorResponse value,
          $Res Function(ValidationErrorResponse) _then) =
      _$ValidationErrorResponseCopyWithImpl;
  @useResult
  $Res call({String status, String message, Map<String, List<String>> errors});
}

/// @nodoc
class _$ValidationErrorResponseCopyWithImpl<$Res>
    implements $ValidationErrorResponseCopyWith<$Res> {
  _$ValidationErrorResponseCopyWithImpl(this._self, this._then);

  final ValidationErrorResponse _self;
  final $Res Function(ValidationErrorResponse) _then;

  /// Create a copy of ValidationErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errors = null,
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
      errors: null == errors
          ? _self.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ValidationErrorResponse implements ValidationErrorResponse {
  const _ValidationErrorResponse(
      {required this.status,
      required this.message,
      required final Map<String, List<String>> errors})
      : _errors = errors;
  factory _ValidationErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorResponseFromJson(json);

  @override
  final String status;
  @override
  final String message;
  final Map<String, List<String>> _errors;
  @override
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  /// Create a copy of ValidationErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationErrorResponseCopyWith<_ValidationErrorResponse> get copyWith =>
      __$ValidationErrorResponseCopyWithImpl<_ValidationErrorResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationErrorResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationErrorResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_errors));

  @override
  String toString() {
    return 'ValidationErrorResponse(status: $status, message: $message, errors: $errors)';
  }
}

/// @nodoc
abstract mixin class _$ValidationErrorResponseCopyWith<$Res>
    implements $ValidationErrorResponseCopyWith<$Res> {
  factory _$ValidationErrorResponseCopyWith(_ValidationErrorResponse value,
          $Res Function(_ValidationErrorResponse) _then) =
      __$ValidationErrorResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, Map<String, List<String>> errors});
}

/// @nodoc
class __$ValidationErrorResponseCopyWithImpl<$Res>
    implements _$ValidationErrorResponseCopyWith<$Res> {
  __$ValidationErrorResponseCopyWithImpl(this._self, this._then);

  final _ValidationErrorResponse _self;
  final $Res Function(_ValidationErrorResponse) _then;

  /// Create a copy of ValidationErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errors = null,
  }) {
    return _then(_ValidationErrorResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _self._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

// dart format on
