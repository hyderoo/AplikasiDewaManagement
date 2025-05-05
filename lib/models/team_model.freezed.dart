// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeamModel {
  int get id;
  String get name;
  String get role;
  String get description;
  String get image;
  String get instagram;
  String get linkedin;
  @JsonKey(name: 'is_highlighted')
  bool get isHighlighted;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @JsonKey(name: 'image_url')
  String get imageUrl;

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TeamModelCopyWith<TeamModel> get copyWith =>
      _$TeamModelCopyWithImpl<TeamModel>(this as TeamModel, _$identity);

  /// Serializes this TeamModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TeamModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.linkedin, linkedin) ||
                other.linkedin == linkedin) &&
            (identical(other.isHighlighted, isHighlighted) ||
                other.isHighlighted == isHighlighted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      role,
      description,
      image,
      instagram,
      linkedin,
      isHighlighted,
      createdAt,
      updatedAt,
      imageUrl);

  @override
  String toString() {
    return 'TeamModel(id: $id, name: $name, role: $role, description: $description, image: $image, instagram: $instagram, linkedin: $linkedin, isHighlighted: $isHighlighted, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $TeamModelCopyWith<$Res> {
  factory $TeamModelCopyWith(TeamModel value, $Res Function(TeamModel) _then) =
      _$TeamModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String role,
      String description,
      String image,
      String instagram,
      String linkedin,
      @JsonKey(name: 'is_highlighted') bool isHighlighted,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class _$TeamModelCopyWithImpl<$Res> implements $TeamModelCopyWith<$Res> {
  _$TeamModelCopyWithImpl(this._self, this._then);

  final TeamModel _self;
  final $Res Function(TeamModel) _then;

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? description = null,
    Object? image = null,
    Object? instagram = null,
    Object? linkedin = null,
    Object? isHighlighted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = null,
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
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      instagram: null == instagram
          ? _self.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String,
      linkedin: null == linkedin
          ? _self.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String,
      isHighlighted: null == isHighlighted
          ? _self.isHighlighted
          : isHighlighted // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _TeamModel implements TeamModel {
  const _TeamModel(
      {required this.id,
      required this.name,
      required this.role,
      required this.description,
      required this.image,
      required this.instagram,
      required this.linkedin,
      @JsonKey(name: 'is_highlighted') required this.isHighlighted,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'image_url') required this.imageUrl});
  factory _TeamModel.fromJson(Map<String, dynamic> json) =>
      _$TeamModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String role;
  @override
  final String description;
  @override
  final String image;
  @override
  final String instagram;
  @override
  final String linkedin;
  @override
  @JsonKey(name: 'is_highlighted')
  final bool isHighlighted;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TeamModelCopyWith<_TeamModel> get copyWith =>
      __$TeamModelCopyWithImpl<_TeamModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TeamModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TeamModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.linkedin, linkedin) ||
                other.linkedin == linkedin) &&
            (identical(other.isHighlighted, isHighlighted) ||
                other.isHighlighted == isHighlighted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      role,
      description,
      image,
      instagram,
      linkedin,
      isHighlighted,
      createdAt,
      updatedAt,
      imageUrl);

  @override
  String toString() {
    return 'TeamModel(id: $id, name: $name, role: $role, description: $description, image: $image, instagram: $instagram, linkedin: $linkedin, isHighlighted: $isHighlighted, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$TeamModelCopyWith<$Res>
    implements $TeamModelCopyWith<$Res> {
  factory _$TeamModelCopyWith(
          _TeamModel value, $Res Function(_TeamModel) _then) =
      __$TeamModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String role,
      String description,
      String image,
      String instagram,
      String linkedin,
      @JsonKey(name: 'is_highlighted') bool isHighlighted,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class __$TeamModelCopyWithImpl<$Res> implements _$TeamModelCopyWith<$Res> {
  __$TeamModelCopyWithImpl(this._self, this._then);

  final _TeamModel _self;
  final $Res Function(_TeamModel) _then;

  /// Create a copy of TeamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? description = null,
    Object? image = null,
    Object? instagram = null,
    Object? linkedin = null,
    Object? isHighlighted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = null,
  }) {
    return _then(_TeamModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      instagram: null == instagram
          ? _self.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String,
      linkedin: null == linkedin
          ? _self.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String,
      isHighlighted: null == isHighlighted
          ? _self.isHighlighted
          : isHighlighted // ignore: cast_nullable_to_non_nullable
              as bool,
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
