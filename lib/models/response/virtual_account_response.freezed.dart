// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'virtual_account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VirtualAccountResponse {
  String get status;
  String get message;
  dynamic get data;

  /// Create a copy of VirtualAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VirtualAccountResponseCopyWith<VirtualAccountResponse> get copyWith =>
      _$VirtualAccountResponseCopyWithImpl<VirtualAccountResponse>(
          this as VirtualAccountResponse, _$identity);

  /// Serializes this VirtualAccountResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VirtualAccountResponse &&
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
    return 'VirtualAccountResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $VirtualAccountResponseCopyWith<$Res> {
  factory $VirtualAccountResponseCopyWith(VirtualAccountResponse value,
          $Res Function(VirtualAccountResponse) _then) =
      _$VirtualAccountResponseCopyWithImpl;
  @useResult
  $Res call({String status, String message, dynamic data});
}

/// @nodoc
class _$VirtualAccountResponseCopyWithImpl<$Res>
    implements $VirtualAccountResponseCopyWith<$Res> {
  _$VirtualAccountResponseCopyWithImpl(this._self, this._then);

  final VirtualAccountResponse _self;
  final $Res Function(VirtualAccountResponse) _then;

  /// Create a copy of VirtualAccountResponse
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
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _VirtualAccountResponse implements VirtualAccountResponse {
  const _VirtualAccountResponse(
      {required this.status, required this.message, this.data});
  factory _VirtualAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$VirtualAccountResponseFromJson(json);

  @override
  final String status;
  @override
  final String message;
  @override
  final dynamic data;

  /// Create a copy of VirtualAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VirtualAccountResponseCopyWith<_VirtualAccountResponse> get copyWith =>
      __$VirtualAccountResponseCopyWithImpl<_VirtualAccountResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VirtualAccountResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VirtualAccountResponse &&
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
    return 'VirtualAccountResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$VirtualAccountResponseCopyWith<$Res>
    implements $VirtualAccountResponseCopyWith<$Res> {
  factory _$VirtualAccountResponseCopyWith(_VirtualAccountResponse value,
          $Res Function(_VirtualAccountResponse) _then) =
      __$VirtualAccountResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, dynamic data});
}

/// @nodoc
class __$VirtualAccountResponseCopyWithImpl<$Res>
    implements _$VirtualAccountResponseCopyWith<$Res> {
  __$VirtualAccountResponseCopyWithImpl(this._self, this._then);

  final _VirtualAccountResponse _self;
  final $Res Function(_VirtualAccountResponse) _then;

  /// Create a copy of VirtualAccountResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_VirtualAccountResponse(
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
              as dynamic,
    ));
  }
}

// dart format on
