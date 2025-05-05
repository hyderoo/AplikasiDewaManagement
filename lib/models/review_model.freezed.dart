// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewModel {
  int get id;
  @JsonKey(name: 'user_name')
  String get userName;
  double get rating;
  String get review;
  String get date;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReviewModelCopyWith<ReviewModel> get copyWith =>
      _$ReviewModelCopyWithImpl<ReviewModel>(this as ReviewModel, _$identity);

  /// Serializes this ReviewModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReviewModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userName, rating, review, date, createdAt, updatedAt);

  @override
  String toString() {
    return 'ReviewModel(id: $id, userName: $userName, rating: $rating, review: $review, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ReviewModelCopyWith<$Res> {
  factory $ReviewModelCopyWith(
          ReviewModel value, $Res Function(ReviewModel) _then) =
      _$ReviewModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_name') String userName,
      double rating,
      String review,
      String date,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$ReviewModelCopyWithImpl<$Res> implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._self, this._then);

  final ReviewModel _self;
  final $Res Function(ReviewModel) _then;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? rating = null,
    Object? review = null,
    Object? date = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      review: null == review
          ? _self.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
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
class _ReviewModel implements ReviewModel {
  const _ReviewModel(
      {required this.id,
      @JsonKey(name: 'user_name') required this.userName,
      required this.rating,
      required this.review,
      required this.date,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_name')
  final String userName;
  @override
  final double rating;
  @override
  final String review;
  @override
  final String date;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReviewModelCopyWith<_ReviewModel> get copyWith =>
      __$ReviewModelCopyWithImpl<_ReviewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReviewModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReviewModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userName, rating, review, date, createdAt, updatedAt);

  @override
  String toString() {
    return 'ReviewModel(id: $id, userName: $userName, rating: $rating, review: $review, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ReviewModelCopyWith<$Res>
    implements $ReviewModelCopyWith<$Res> {
  factory _$ReviewModelCopyWith(
          _ReviewModel value, $Res Function(_ReviewModel) _then) =
      __$ReviewModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'user_name') String userName,
      double rating,
      String review,
      String date,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$ReviewModelCopyWithImpl<$Res> implements _$ReviewModelCopyWith<$Res> {
  __$ReviewModelCopyWithImpl(this._self, this._then);

  final _ReviewModel _self;
  final $Res Function(_ReviewModel) _then;

  /// Create a copy of ReviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? rating = null,
    Object? review = null,
    Object? date = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_ReviewModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      review: null == review
          ? _self.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
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
