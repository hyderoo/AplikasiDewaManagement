// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeamResponse {
  String get status;
  String get message;
  List<TeamModel>? get data;

  /// Create a copy of TeamResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TeamResponseCopyWith<TeamResponse> get copyWith =>
      _$TeamResponseCopyWithImpl<TeamResponse>(
          this as TeamResponse, _$identity);

  /// Serializes this TeamResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TeamResponse &&
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
    return 'TeamResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $TeamResponseCopyWith<$Res> {
  factory $TeamResponseCopyWith(
          TeamResponse value, $Res Function(TeamResponse) _then) =
      _$TeamResponseCopyWithImpl;
  @useResult
  $Res call({String status, String message, List<TeamModel>? data});
}

/// @nodoc
class _$TeamResponseCopyWithImpl<$Res> implements $TeamResponseCopyWith<$Res> {
  _$TeamResponseCopyWithImpl(this._self, this._then);

  final TeamResponse _self;
  final $Res Function(TeamResponse) _then;

  /// Create a copy of TeamResponse
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
              as List<TeamModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TeamResponse implements TeamResponse {
  const _TeamResponse(
      {required this.status,
      required this.message,
      final List<TeamModel>? data})
      : _data = data;
  factory _TeamResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamResponseFromJson(json);

  @override
  final String status;
  @override
  final String message;
  final List<TeamModel>? _data;
  @override
  List<TeamModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of TeamResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TeamResponseCopyWith<_TeamResponse> get copyWith =>
      __$TeamResponseCopyWithImpl<_TeamResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TeamResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TeamResponse &&
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
    return 'TeamResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$TeamResponseCopyWith<$Res>
    implements $TeamResponseCopyWith<$Res> {
  factory _$TeamResponseCopyWith(
          _TeamResponse value, $Res Function(_TeamResponse) _then) =
      __$TeamResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, List<TeamModel>? data});
}

/// @nodoc
class __$TeamResponseCopyWithImpl<$Res>
    implements _$TeamResponseCopyWith<$Res> {
  __$TeamResponseCopyWithImpl(this._self, this._then);

  final _TeamResponse _self;
  final $Res Function(_TeamResponse) _then;

  /// Create a copy of TeamResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_TeamResponse(
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
              as List<TeamModel>?,
    ));
  }
}

// dart format on
