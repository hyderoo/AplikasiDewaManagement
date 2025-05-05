// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PortfolioModel {
  int get id;
  String get title;
  String get category;
  String get description;
  String get image;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  List<PortfolioImage> get images;

  /// Create a copy of PortfolioModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PortfolioModelCopyWith<PortfolioModel> get copyWith =>
      _$PortfolioModelCopyWithImpl<PortfolioModel>(
          this as PortfolioModel, _$identity);

  /// Serializes this PortfolioModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PortfolioModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, category, description,
      image, createdAt, updatedAt, const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'PortfolioModel(id: $id, title: $title, category: $category, description: $description, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, images: $images)';
  }
}

/// @nodoc
abstract mixin class $PortfolioModelCopyWith<$Res> {
  factory $PortfolioModelCopyWith(
          PortfolioModel value, $Res Function(PortfolioModel) _then) =
      _$PortfolioModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String title,
      String category,
      String description,
      String image,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      List<PortfolioImage> images});
}

/// @nodoc
class _$PortfolioModelCopyWithImpl<$Res>
    implements $PortfolioModelCopyWith<$Res> {
  _$PortfolioModelCopyWithImpl(this._self, this._then);

  final PortfolioModel _self;
  final $Res Function(PortfolioModel) _then;

  /// Create a copy of PortfolioModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? description = null,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? images = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PortfolioImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PortfolioModel implements PortfolioModel {
  const _PortfolioModel(
      {required this.id,
      required this.title,
      required this.category,
      required this.description,
      required this.image,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required final List<PortfolioImage> images})
      : _images = images;
  factory _PortfolioModel.fromJson(Map<String, dynamic> json) =>
      _$PortfolioModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String category;
  @override
  final String description;
  @override
  final String image;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  final List<PortfolioImage> _images;
  @override
  List<PortfolioImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  /// Create a copy of PortfolioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PortfolioModelCopyWith<_PortfolioModel> get copyWith =>
      __$PortfolioModelCopyWithImpl<_PortfolioModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PortfolioModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PortfolioModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      category,
      description,
      image,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_images));

  @override
  String toString() {
    return 'PortfolioModel(id: $id, title: $title, category: $category, description: $description, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, images: $images)';
  }
}

/// @nodoc
abstract mixin class _$PortfolioModelCopyWith<$Res>
    implements $PortfolioModelCopyWith<$Res> {
  factory _$PortfolioModelCopyWith(
          _PortfolioModel value, $Res Function(_PortfolioModel) _then) =
      __$PortfolioModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String category,
      String description,
      String image,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      List<PortfolioImage> images});
}

/// @nodoc
class __$PortfolioModelCopyWithImpl<$Res>
    implements _$PortfolioModelCopyWith<$Res> {
  __$PortfolioModelCopyWithImpl(this._self, this._then);

  final _PortfolioModel _self;
  final $Res Function(_PortfolioModel) _then;

  /// Create a copy of PortfolioModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? description = null,
    Object? image = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? images = null,
  }) {
    return _then(_PortfolioModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PortfolioImage>,
    ));
  }
}

/// @nodoc
mixin _$PortfolioImage {
  int get id;
  @JsonKey(name: 'portfolio_id')
  int get portfolioId;
  @JsonKey(name: 'image_path')
  String get imagePath;
  @JsonKey(name: 'display_order')
  int get displayOrder;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @JsonKey(name: 'image_url')
  String get imageUrl;

  /// Create a copy of PortfolioImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PortfolioImageCopyWith<PortfolioImage> get copyWith =>
      _$PortfolioImageCopyWithImpl<PortfolioImage>(
          this as PortfolioImage, _$identity);

  /// Serializes this PortfolioImage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PortfolioImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.portfolioId, portfolioId) ||
                other.portfolioId == portfolioId) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, portfolioId, imagePath,
      displayOrder, createdAt, updatedAt, imageUrl);

  @override
  String toString() {
    return 'PortfolioImage(id: $id, portfolioId: $portfolioId, imagePath: $imagePath, displayOrder: $displayOrder, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $PortfolioImageCopyWith<$Res> {
  factory $PortfolioImageCopyWith(
          PortfolioImage value, $Res Function(PortfolioImage) _then) =
      _$PortfolioImageCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'portfolio_id') int portfolioId,
      @JsonKey(name: 'image_path') String imagePath,
      @JsonKey(name: 'display_order') int displayOrder,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class _$PortfolioImageCopyWithImpl<$Res>
    implements $PortfolioImageCopyWith<$Res> {
  _$PortfolioImageCopyWithImpl(this._self, this._then);

  final PortfolioImage _self;
  final $Res Function(PortfolioImage) _then;

  /// Create a copy of PortfolioImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? portfolioId = null,
    Object? imagePath = null,
    Object? displayOrder = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      portfolioId: null == portfolioId
          ? _self.portfolioId
          : portfolioId // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _self.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      displayOrder: null == displayOrder
          ? _self.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PortfolioImage implements PortfolioImage {
  const _PortfolioImage(
      {required this.id,
      @JsonKey(name: 'portfolio_id') required this.portfolioId,
      @JsonKey(name: 'image_path') required this.imagePath,
      @JsonKey(name: 'display_order') required this.displayOrder,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'image_url') required this.imageUrl});
  factory _PortfolioImage.fromJson(Map<String, dynamic> json) =>
      _$PortfolioImageFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'portfolio_id')
  final int portfolioId;
  @override
  @JsonKey(name: 'image_path')
  final String imagePath;
  @override
  @JsonKey(name: 'display_order')
  final int displayOrder;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  /// Create a copy of PortfolioImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PortfolioImageCopyWith<_PortfolioImage> get copyWith =>
      __$PortfolioImageCopyWithImpl<_PortfolioImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PortfolioImageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PortfolioImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.portfolioId, portfolioId) ||
                other.portfolioId == portfolioId) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, portfolioId, imagePath,
      displayOrder, createdAt, updatedAt, imageUrl);

  @override
  String toString() {
    return 'PortfolioImage(id: $id, portfolioId: $portfolioId, imagePath: $imagePath, displayOrder: $displayOrder, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$PortfolioImageCopyWith<$Res>
    implements $PortfolioImageCopyWith<$Res> {
  factory _$PortfolioImageCopyWith(
          _PortfolioImage value, $Res Function(_PortfolioImage) _then) =
      __$PortfolioImageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'portfolio_id') int portfolioId,
      @JsonKey(name: 'image_path') String imagePath,
      @JsonKey(name: 'display_order') int displayOrder,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class __$PortfolioImageCopyWithImpl<$Res>
    implements _$PortfolioImageCopyWith<$Res> {
  __$PortfolioImageCopyWithImpl(this._self, this._then);

  final _PortfolioImage _self;
  final $Res Function(_PortfolioImage) _then;

  /// Create a copy of PortfolioImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? portfolioId = null,
    Object? imagePath = null,
    Object? displayOrder = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = null,
  }) {
    return _then(_PortfolioImage(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      portfolioId: null == portfolioId
          ? _self.portfolioId
          : portfolioId // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _self.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      displayOrder: null == displayOrder
          ? _self.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

// dart format on
