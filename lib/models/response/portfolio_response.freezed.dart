// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PortfolioResponse {
  String get status;
  String get message;
  List<PortfolioModel>? get data;

  /// Create a copy of PortfolioResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PortfolioResponseCopyWith<PortfolioResponse> get copyWith =>
      _$PortfolioResponseCopyWithImpl<PortfolioResponse>(
          this as PortfolioResponse, _$identity);

  /// Serializes this PortfolioResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PortfolioResponse &&
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
    return 'PortfolioResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $PortfolioResponseCopyWith<$Res> {
  factory $PortfolioResponseCopyWith(
          PortfolioResponse value, $Res Function(PortfolioResponse) _then) =
      _$PortfolioResponseCopyWithImpl;
  @useResult
  $Res call({String status, String message, List<PortfolioModel>? data});
}

/// @nodoc
class _$PortfolioResponseCopyWithImpl<$Res>
    implements $PortfolioResponseCopyWith<$Res> {
  _$PortfolioResponseCopyWithImpl(this._self, this._then);

  final PortfolioResponse _self;
  final $Res Function(PortfolioResponse) _then;

  /// Create a copy of PortfolioResponse
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
              as List<PortfolioModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PortfolioResponse implements PortfolioResponse {
  const _PortfolioResponse(
      {required this.status,
      required this.message,
      final List<PortfolioModel>? data})
      : _data = data;
  factory _PortfolioResponse.fromJson(Map<String, dynamic> json) =>
      _$PortfolioResponseFromJson(json);

  @override
  final String status;
  @override
  final String message;
  final List<PortfolioModel>? _data;
  @override
  List<PortfolioModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PortfolioResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PortfolioResponseCopyWith<_PortfolioResponse> get copyWith =>
      __$PortfolioResponseCopyWithImpl<_PortfolioResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PortfolioResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PortfolioResponse &&
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
    return 'PortfolioResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$PortfolioResponseCopyWith<$Res>
    implements $PortfolioResponseCopyWith<$Res> {
  factory _$PortfolioResponseCopyWith(
          _PortfolioResponse value, $Res Function(_PortfolioResponse) _then) =
      __$PortfolioResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, List<PortfolioModel>? data});
}

/// @nodoc
class __$PortfolioResponseCopyWithImpl<$Res>
    implements _$PortfolioResponseCopyWith<$Res> {
  __$PortfolioResponseCopyWithImpl(this._self, this._then);

  final _PortfolioResponse _self;
  final $Res Function(_PortfolioResponse) _then;

  /// Create a copy of PortfolioResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_PortfolioResponse(
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
              as List<PortfolioModel>?,
    ));
  }
}

// dart format on
