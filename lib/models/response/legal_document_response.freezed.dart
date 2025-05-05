// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'legal_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LegalDocumentResponse {
  String get status;
  String get message;
  LegalDocumentModel? get data;

  /// Create a copy of LegalDocumentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LegalDocumentResponseCopyWith<LegalDocumentResponse> get copyWith =>
      _$LegalDocumentResponseCopyWithImpl<LegalDocumentResponse>(
          this as LegalDocumentResponse, _$identity);

  /// Serializes this LegalDocumentResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LegalDocumentResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @override
  String toString() {
    return 'LegalDocumentResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $LegalDocumentResponseCopyWith<$Res> {
  factory $LegalDocumentResponseCopyWith(LegalDocumentResponse value,
          $Res Function(LegalDocumentResponse) _then) =
      _$LegalDocumentResponseCopyWithImpl;
  @useResult
  $Res call({String status, String message, LegalDocumentModel? data});

  $LegalDocumentModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$LegalDocumentResponseCopyWithImpl<$Res>
    implements $LegalDocumentResponseCopyWith<$Res> {
  _$LegalDocumentResponseCopyWithImpl(this._self, this._then);

  final LegalDocumentResponse _self;
  final $Res Function(LegalDocumentResponse) _then;

  /// Create a copy of LegalDocumentResponse
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
              as LegalDocumentModel?,
    ));
  }

  /// Create a copy of LegalDocumentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LegalDocumentModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $LegalDocumentModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _LegalDocumentResponse implements LegalDocumentResponse {
  const _LegalDocumentResponse(
      {required this.status, required this.message, this.data});
  factory _LegalDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$LegalDocumentResponseFromJson(json);

  @override
  final String status;
  @override
  final String message;
  @override
  final LegalDocumentModel? data;

  /// Create a copy of LegalDocumentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LegalDocumentResponseCopyWith<_LegalDocumentResponse> get copyWith =>
      __$LegalDocumentResponseCopyWithImpl<_LegalDocumentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LegalDocumentResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LegalDocumentResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @override
  String toString() {
    return 'LegalDocumentResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$LegalDocumentResponseCopyWith<$Res>
    implements $LegalDocumentResponseCopyWith<$Res> {
  factory _$LegalDocumentResponseCopyWith(_LegalDocumentResponse value,
          $Res Function(_LegalDocumentResponse) _then) =
      __$LegalDocumentResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, LegalDocumentModel? data});

  @override
  $LegalDocumentModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$LegalDocumentResponseCopyWithImpl<$Res>
    implements _$LegalDocumentResponseCopyWith<$Res> {
  __$LegalDocumentResponseCopyWithImpl(this._self, this._then);

  final _LegalDocumentResponse _self;
  final $Res Function(_LegalDocumentResponse) _then;

  /// Create a copy of LegalDocumentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_LegalDocumentResponse(
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
              as LegalDocumentModel?,
    ));
  }

  /// Create a copy of LegalDocumentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LegalDocumentModelCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $LegalDocumentModelCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
