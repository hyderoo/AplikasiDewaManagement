// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review2_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Review2Model {
  int get id;
  @JsonKey(name: 'order_id')
  int get orderId;
  @JsonKey(name: 'user_id')
  int get userId;
  int get rating;
  String? get comment;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of Review2Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $Review2ModelCopyWith<Review2Model> get copyWith =>
      _$Review2ModelCopyWithImpl<Review2Model>(
          this as Review2Model, _$identity);

  /// Serializes this Review2Model to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Review2Model &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, orderId, userId, rating, comment, createdAt, updatedAt);

  @override
  String toString() {
    return 'Review2Model(id: $id, orderId: $orderId, userId: $userId, rating: $rating, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $Review2ModelCopyWith<$Res> {
  factory $Review2ModelCopyWith(
          Review2Model value, $Res Function(Review2Model) _then) =
      _$Review2ModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'order_id') int orderId,
      @JsonKey(name: 'user_id') int userId,
      int rating,
      String? comment,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$Review2ModelCopyWithImpl<$Res> implements $Review2ModelCopyWith<$Res> {
  _$Review2ModelCopyWithImpl(this._self, this._then);

  final Review2Model _self;
  final $Res Function(Review2Model) _then;

  /// Create a copy of Review2Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? userId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Review2Model implements Review2Model {
  const _Review2Model(
      {required this.id,
      @JsonKey(name: 'order_id') required this.orderId,
      @JsonKey(name: 'user_id') required this.userId,
      required this.rating,
      this.comment,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _Review2Model.fromJson(Map<String, dynamic> json) =>
      _$Review2ModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'order_id')
  final int orderId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final int rating;
  @override
  final String? comment;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  /// Create a copy of Review2Model
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$Review2ModelCopyWith<_Review2Model> get copyWith =>
      __$Review2ModelCopyWithImpl<_Review2Model>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$Review2ModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Review2Model &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, orderId, userId, rating, comment, createdAt, updatedAt);

  @override
  String toString() {
    return 'Review2Model(id: $id, orderId: $orderId, userId: $userId, rating: $rating, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$Review2ModelCopyWith<$Res>
    implements $Review2ModelCopyWith<$Res> {
  factory _$Review2ModelCopyWith(
          _Review2Model value, $Res Function(_Review2Model) _then) =
      __$Review2ModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'order_id') int orderId,
      @JsonKey(name: 'user_id') int userId,
      int rating,
      String? comment,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$Review2ModelCopyWithImpl<$Res>
    implements _$Review2ModelCopyWith<$Res> {
  __$Review2ModelCopyWithImpl(this._self, this._then);

  final _Review2Model _self;
  final $Res Function(_Review2Model) _then;

  /// Create a copy of Review2Model
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? userId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_Review2Model(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
