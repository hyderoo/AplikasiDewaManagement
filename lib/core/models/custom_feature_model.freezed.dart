// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_feature_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomFeatureModel {
  int get id;
  @JsonKey(name: 'order_id')
  int get orderId;
  @JsonKey(name: 'custom_feature_id')
  int? get customFeatureId;
  @JsonKey(name: 'feature_name')
  String get featureName;
  String get price;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of CustomFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomFeatureModelCopyWith<CustomFeatureModel> get copyWith =>
      _$CustomFeatureModelCopyWithImpl<CustomFeatureModel>(
          this as CustomFeatureModel, _$identity);

  /// Serializes this CustomFeatureModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomFeatureModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.customFeatureId, customFeatureId) ||
                other.customFeatureId == customFeatureId) &&
            (identical(other.featureName, featureName) ||
                other.featureName == featureName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderId, customFeatureId,
      featureName, price, createdAt, updatedAt);

  @override
  String toString() {
    return 'CustomFeatureModel(id: $id, orderId: $orderId, customFeatureId: $customFeatureId, featureName: $featureName, price: $price, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $CustomFeatureModelCopyWith<$Res> {
  factory $CustomFeatureModelCopyWith(
          CustomFeatureModel value, $Res Function(CustomFeatureModel) _then) =
      _$CustomFeatureModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'order_id') int orderId,
      @JsonKey(name: 'custom_feature_id') int? customFeatureId,
      @JsonKey(name: 'feature_name') String featureName,
      String price,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$CustomFeatureModelCopyWithImpl<$Res>
    implements $CustomFeatureModelCopyWith<$Res> {
  _$CustomFeatureModelCopyWithImpl(this._self, this._then);

  final CustomFeatureModel _self;
  final $Res Function(CustomFeatureModel) _then;

  /// Create a copy of CustomFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? customFeatureId = freezed,
    Object? featureName = null,
    Object? price = null,
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
      customFeatureId: freezed == customFeatureId
          ? _self.customFeatureId
          : customFeatureId // ignore: cast_nullable_to_non_nullable
              as int?,
      featureName: null == featureName
          ? _self.featureName
          : featureName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
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
class _CustomFeatureModel implements CustomFeatureModel {
  const _CustomFeatureModel(
      {required this.id,
      @JsonKey(name: 'order_id') required this.orderId,
      @JsonKey(name: 'custom_feature_id') this.customFeatureId,
      @JsonKey(name: 'feature_name') required this.featureName,
      required this.price,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _CustomFeatureModel.fromJson(Map<String, dynamic> json) =>
      _$CustomFeatureModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'order_id')
  final int orderId;
  @override
  @JsonKey(name: 'custom_feature_id')
  final int? customFeatureId;
  @override
  @JsonKey(name: 'feature_name')
  final String featureName;
  @override
  final String price;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  /// Create a copy of CustomFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomFeatureModelCopyWith<_CustomFeatureModel> get copyWith =>
      __$CustomFeatureModelCopyWithImpl<_CustomFeatureModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomFeatureModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomFeatureModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.customFeatureId, customFeatureId) ||
                other.customFeatureId == customFeatureId) &&
            (identical(other.featureName, featureName) ||
                other.featureName == featureName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderId, customFeatureId,
      featureName, price, createdAt, updatedAt);

  @override
  String toString() {
    return 'CustomFeatureModel(id: $id, orderId: $orderId, customFeatureId: $customFeatureId, featureName: $featureName, price: $price, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$CustomFeatureModelCopyWith<$Res>
    implements $CustomFeatureModelCopyWith<$Res> {
  factory _$CustomFeatureModelCopyWith(
          _CustomFeatureModel value, $Res Function(_CustomFeatureModel) _then) =
      __$CustomFeatureModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'order_id') int orderId,
      @JsonKey(name: 'custom_feature_id') int? customFeatureId,
      @JsonKey(name: 'feature_name') String featureName,
      String price,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$CustomFeatureModelCopyWithImpl<$Res>
    implements _$CustomFeatureModelCopyWith<$Res> {
  __$CustomFeatureModelCopyWithImpl(this._self, this._then);

  final _CustomFeatureModel _self;
  final $Res Function(_CustomFeatureModel) _then;

  /// Create a copy of CustomFeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? customFeatureId = freezed,
    Object? featureName = null,
    Object? price = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_CustomFeatureModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      customFeatureId: freezed == customFeatureId
          ? _self.customFeatureId
          : customFeatureId // ignore: cast_nullable_to_non_nullable
              as int?,
      featureName: null == featureName
          ? _self.featureName
          : featureName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
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
