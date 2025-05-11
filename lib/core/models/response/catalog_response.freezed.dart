// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogResponse {
  String get status;
  String get message;
  List<CatalogModel>? get data;

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatalogResponseCopyWith<CatalogResponse> get copyWith =>
      _$CatalogResponseCopyWithImpl<CatalogResponse>(
          this as CatalogResponse, _$identity);

  /// Serializes this CatalogResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatalogResponse &&
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
    return 'CatalogResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $CatalogResponseCopyWith<$Res> {
  factory $CatalogResponseCopyWith(
          CatalogResponse value, $Res Function(CatalogResponse) _then) =
      _$CatalogResponseCopyWithImpl;
  @useResult
  $Res call({String status, String message, List<CatalogModel>? data});
}

/// @nodoc
class _$CatalogResponseCopyWithImpl<$Res>
    implements $CatalogResponseCopyWith<$Res> {
  _$CatalogResponseCopyWithImpl(this._self, this._then);

  final CatalogResponse _self;
  final $Res Function(CatalogResponse) _then;

  /// Create a copy of CatalogResponse
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
              as List<CatalogModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CatalogResponse implements CatalogResponse {
  const _CatalogResponse(
      {required this.status,
      required this.message,
      final List<CatalogModel>? data})
      : _data = data;
  factory _CatalogResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogResponseFromJson(json);

  @override
  final String status;
  @override
  final String message;
  final List<CatalogModel>? _data;
  @override
  List<CatalogModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CatalogResponseCopyWith<_CatalogResponse> get copyWith =>
      __$CatalogResponseCopyWithImpl<_CatalogResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CatalogResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatalogResponse &&
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
    return 'CatalogResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$CatalogResponseCopyWith<$Res>
    implements $CatalogResponseCopyWith<$Res> {
  factory _$CatalogResponseCopyWith(
          _CatalogResponse value, $Res Function(_CatalogResponse) _then) =
      __$CatalogResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, List<CatalogModel>? data});
}

/// @nodoc
class __$CatalogResponseCopyWithImpl<$Res>
    implements _$CatalogResponseCopyWith<$Res> {
  __$CatalogResponseCopyWithImpl(this._self, this._then);

  final _CatalogResponse _self;
  final $Res Function(_CatalogResponse) _then;

  /// Create a copy of CatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_CatalogResponse(
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
              as List<CatalogModel>?,
    ));
  }
}

// dart format on
