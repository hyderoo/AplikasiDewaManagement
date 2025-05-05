// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceResponse {
  String get status;
  String get message;
  List<ServiceModel>? get data;

  /// Create a copy of ServiceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServiceResponseCopyWith<ServiceResponse> get copyWith =>
      _$ServiceResponseCopyWithImpl<ServiceResponse>(
          this as ServiceResponse, _$identity);

  /// Serializes this ServiceResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServiceResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'ServiceResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $ServiceResponseCopyWith<$Res> {
  factory $ServiceResponseCopyWith(
          ServiceResponse value, $Res Function(ServiceResponse) _then) =
      _$ServiceResponseCopyWithImpl;
  @useResult
  $Res call({String status, String message, List<ServiceModel>? data});
}

/// @nodoc
class _$ServiceResponseCopyWithImpl<$Res>
    implements $ServiceResponseCopyWith<$Res> {
  _$ServiceResponseCopyWithImpl(this._self, this._then);

  final ServiceResponse _self;
  final $Res Function(ServiceResponse) _then;

  /// Create a copy of ServiceResponse
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
              as List<ServiceModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ServiceResponse implements ServiceResponse {
  const _ServiceResponse(
      {required this.status,
      required this.message,
      final List<ServiceModel>? data})
      : _data = data;
  factory _ServiceResponse.fromJson(Map<String, dynamic> json) =>
      _$ServiceResponseFromJson(json);

  @override
  final String status;
  @override
  final String message;
  final List<ServiceModel>? _data;
  @override
  List<ServiceModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ServiceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ServiceResponseCopyWith<_ServiceResponse> get copyWith =>
      __$ServiceResponseCopyWithImpl<_ServiceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ServiceResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServiceResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'ServiceResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ServiceResponseCopyWith<$Res>
    implements $ServiceResponseCopyWith<$Res> {
  factory _$ServiceResponseCopyWith(
          _ServiceResponse value, $Res Function(_ServiceResponse) _then) =
      __$ServiceResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, List<ServiceModel>? data});
}

/// @nodoc
class __$ServiceResponseCopyWithImpl<$Res>
    implements _$ServiceResponseCopyWith<$Res> {
  __$ServiceResponseCopyWithImpl(this._self, this._then);

  final _ServiceResponse _self;
  final $Res Function(_ServiceResponse) _then;

  /// Create a copy of ServiceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_ServiceResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>?,
    ));
  }
}

// dart format on
