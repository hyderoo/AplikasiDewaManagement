// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogModel {
  int get id;
  String get name;
  String get description;
  List<int> get price;
  String get type;
  String get image;
  List<String> get features;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @JsonKey(name: 'formatted_price')
  String get formattedPrice;

  /// Create a copy of CatalogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatalogModelCopyWith<CatalogModel> get copyWith =>
      _$CatalogModelCopyWithImpl<CatalogModel>(
          this as CatalogModel, _$identity);

  /// Serializes this CatalogModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatalogModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.features, features) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.formattedPrice, formattedPrice) ||
                other.formattedPrice == formattedPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(price),
      type,
      image,
      const DeepCollectionEquality().hash(features),
      createdAt,
      updatedAt,
      imageUrl,
      formattedPrice);

  @override
  String toString() {
    return 'CatalogModel(id: $id, name: $name, description: $description, price: $price, type: $type, image: $image, features: $features, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, formattedPrice: $formattedPrice)';
  }
}

/// @nodoc
abstract mixin class $CatalogModelCopyWith<$Res> {
  factory $CatalogModelCopyWith(
          CatalogModel value, $Res Function(CatalogModel) _then) =
      _$CatalogModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      List<int> price,
      String type,
      String image,
      List<String> features,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'formatted_price') String formattedPrice});
}

/// @nodoc
class _$CatalogModelCopyWithImpl<$Res> implements $CatalogModelCopyWith<$Res> {
  _$CatalogModelCopyWithImpl(this._self, this._then);

  final CatalogModel _self;
  final $Res Function(CatalogModel) _then;

  /// Create a copy of CatalogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? type = null,
    Object? image = null,
    Object? features = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = null,
    Object? formattedPrice = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as List<int>,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _self.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      formattedPrice: null == formattedPrice
          ? _self.formattedPrice
          : formattedPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CatalogModel implements CatalogModel {
  const _CatalogModel(
      {required this.id,
      required this.name,
      required this.description,
      required final List<int> price,
      required this.type,
      required this.image,
      required final List<String> features,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'formatted_price') required this.formattedPrice})
      : _price = price,
        _features = features;
  factory _CatalogModel.fromJson(Map<String, dynamic> json) =>
      _$CatalogModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  final List<int> _price;
  @override
  List<int> get price {
    if (_price is EqualUnmodifiableListView) return _price;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_price);
  }

  @override
  final String type;
  @override
  final String image;
  final List<String> _features;
  @override
  List<String> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'formatted_price')
  final String formattedPrice;

  /// Create a copy of CatalogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CatalogModelCopyWith<_CatalogModel> get copyWith =>
      __$CatalogModelCopyWithImpl<_CatalogModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CatalogModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatalogModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._price, _price) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.formattedPrice, formattedPrice) ||
                other.formattedPrice == formattedPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_price),
      type,
      image,
      const DeepCollectionEquality().hash(_features),
      createdAt,
      updatedAt,
      imageUrl,
      formattedPrice);

  @override
  String toString() {
    return 'CatalogModel(id: $id, name: $name, description: $description, price: $price, type: $type, image: $image, features: $features, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl, formattedPrice: $formattedPrice)';
  }
}

/// @nodoc
abstract mixin class _$CatalogModelCopyWith<$Res>
    implements $CatalogModelCopyWith<$Res> {
  factory _$CatalogModelCopyWith(
          _CatalogModel value, $Res Function(_CatalogModel) _then) =
      __$CatalogModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      List<int> price,
      String type,
      String image,
      List<String> features,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'formatted_price') String formattedPrice});
}

/// @nodoc
class __$CatalogModelCopyWithImpl<$Res>
    implements _$CatalogModelCopyWith<$Res> {
  __$CatalogModelCopyWithImpl(this._self, this._then);

  final _CatalogModel _self;
  final $Res Function(_CatalogModel) _then;

  /// Create a copy of CatalogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? price = null,
    Object? type = null,
    Object? image = null,
    Object? features = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = null,
    Object? formattedPrice = null,
  }) {
    return _then(_CatalogModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self._price
          : price // ignore: cast_nullable_to_non_nullable
              as List<int>,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _self._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      formattedPrice: null == formattedPrice
          ? _self.formattedPrice
          : formattedPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
