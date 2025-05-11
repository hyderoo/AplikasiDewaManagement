// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentDetailsResponse {
  String get status;
  String get message;
  PaymentModel? get data;

  /// Create a copy of PaymentDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentDetailsResponseCopyWith<PaymentDetailsResponse> get copyWith =>
      _$PaymentDetailsResponseCopyWithImpl<PaymentDetailsResponse>(
          this as PaymentDetailsResponse, _$identity);

  /// Serializes this PaymentDetailsResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentDetailsResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @override
  String toString() {
    return 'PaymentDetailsResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $PaymentDetailsResponseCopyWith<$Res> {
  factory $PaymentDetailsResponseCopyWith(PaymentDetailsResponse value,
          $Res Function(PaymentDetailsResponse) _then) =
      _$PaymentDetailsResponseCopyWithImpl;
  @useResult
  $Res call({String status, String message, PaymentModel? data});

  $PaymentModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$PaymentDetailsResponseCopyWithImpl<$Res>
    implements $PaymentDetailsResponseCopyWith<$Res> {
  _$PaymentDetailsResponseCopyWithImpl(this._self, this._then);

  final PaymentDetailsResponse _self;
  final $Res Function(PaymentDetailsResponse) _then;

  /// Create a copy of PaymentDetailsResponse
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
              as PaymentModel?,
    ));
  }

  /// Create a copy of PaymentDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $PaymentModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PaymentDetailsResponse implements PaymentDetailsResponse {
  const _PaymentDetailsResponse(
      {required this.status, required this.message, this.data});
  factory _PaymentDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsResponseFromJson(json);

  @override
  final String status;
  @override
  final String message;
  @override
  final PaymentModel? data;

  /// Create a copy of PaymentDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentDetailsResponseCopyWith<_PaymentDetailsResponse> get copyWith =>
      __$PaymentDetailsResponseCopyWithImpl<_PaymentDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentDetailsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentDetailsResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @override
  String toString() {
    return 'PaymentDetailsResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$PaymentDetailsResponseCopyWith<$Res>
    implements $PaymentDetailsResponseCopyWith<$Res> {
  factory _$PaymentDetailsResponseCopyWith(_PaymentDetailsResponse value,
          $Res Function(_PaymentDetailsResponse) _then) =
      __$PaymentDetailsResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, PaymentModel? data});

  @override
  $PaymentModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$PaymentDetailsResponseCopyWithImpl<$Res>
    implements _$PaymentDetailsResponseCopyWith<$Res> {
  __$PaymentDetailsResponseCopyWithImpl(this._self, this._then);

  final _PaymentDetailsResponse _self;
  final $Res Function(_PaymentDetailsResponse) _then;

  /// Create a copy of PaymentDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_PaymentDetailsResponse(
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
              as PaymentModel?,
    ));
  }

  /// Create a copy of PaymentDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $PaymentModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
