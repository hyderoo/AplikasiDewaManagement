// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewResponse {
  String get status;
  String get message;
  List<ReviewModel>? get data;

  /// Create a copy of ReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReviewResponseCopyWith<ReviewResponse> get copyWith =>
      _$ReviewResponseCopyWithImpl<ReviewResponse>(
          this as ReviewResponse, _$identity);

  /// Serializes this ReviewResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReviewResponse &&
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
    return 'ReviewResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $ReviewResponseCopyWith<$Res> {
  factory $ReviewResponseCopyWith(
          ReviewResponse value, $Res Function(ReviewResponse) _then) =
      _$ReviewResponseCopyWithImpl;
  @useResult
  $Res call({String status, String message, List<ReviewModel>? data});
}

/// @nodoc
class _$ReviewResponseCopyWithImpl<$Res>
    implements $ReviewResponseCopyWith<$Res> {
  _$ReviewResponseCopyWithImpl(this._self, this._then);

  final ReviewResponse _self;
  final $Res Function(ReviewResponse) _then;

  /// Create a copy of ReviewResponse
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
              as List<ReviewModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ReviewResponse implements ReviewResponse {
  const _ReviewResponse(
      {required this.status,
      required this.message,
      final List<ReviewModel>? data})
      : _data = data;
  factory _ReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseFromJson(json);

  @override
  final String status;
  @override
  final String message;
  final List<ReviewModel>? _data;
  @override
  List<ReviewModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReviewResponseCopyWith<_ReviewResponse> get copyWith =>
      __$ReviewResponseCopyWithImpl<_ReviewResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReviewResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReviewResponse &&
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
    return 'ReviewResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ReviewResponseCopyWith<$Res>
    implements $ReviewResponseCopyWith<$Res> {
  factory _$ReviewResponseCopyWith(
          _ReviewResponse value, $Res Function(_ReviewResponse) _then) =
      __$ReviewResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, List<ReviewModel>? data});
}

/// @nodoc
class __$ReviewResponseCopyWithImpl<$Res>
    implements _$ReviewResponseCopyWith<$Res> {
  __$ReviewResponseCopyWithImpl(this._self, this._then);

  final _ReviewResponse _self;
  final $Res Function(_ReviewResponse) _then;

  /// Create a copy of ReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_ReviewResponse(
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
              as List<ReviewModel>?,
    ));
  }
}

// dart format on
