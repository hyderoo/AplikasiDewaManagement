// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tim_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimResponse {
  String get status;
  String get message;
  List<TimModel>? get data;

  /// Create a copy of TimResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimResponseCopyWith<TimResponse> get copyWith =>
      _$TimResponseCopyWithImpl<TimResponse>(this as TimResponse, _$identity);

  /// Serializes this TimResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimResponse &&
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
    return 'TimResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $TimResponseCopyWith<$Res> {
  factory $TimResponseCopyWith(
          TimResponse value, $Res Function(TimResponse) _then) =
      _$TimResponseCopyWithImpl;
  @useResult
  $Res call({String status, String message, List<TimModel>? data});
}

/// @nodoc
class _$TimResponseCopyWithImpl<$Res> implements $TimResponseCopyWith<$Res> {
  _$TimResponseCopyWithImpl(this._self, this._then);

  final TimResponse _self;
  final $Res Function(TimResponse) _then;

  /// Create a copy of TimResponse
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
              as List<TimModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TimResponse implements TimResponse {
  const _TimResponse(
      {required this.status, required this.message, final List<TimModel>? data})
      : _data = data;
  factory _TimResponse.fromJson(Map<String, dynamic> json) =>
      _$TimResponseFromJson(json);

  @override
  final String status;
  @override
  final String message;
  final List<TimModel>? _data;
  @override
  List<TimModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of TimResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimResponseCopyWith<_TimResponse> get copyWith =>
      __$TimResponseCopyWithImpl<_TimResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TimResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimResponse &&
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
    return 'TimResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$TimResponseCopyWith<$Res>
    implements $TimResponseCopyWith<$Res> {
  factory _$TimResponseCopyWith(
          _TimResponse value, $Res Function(_TimResponse) _then) =
      __$TimResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, List<TimModel>? data});
}

/// @nodoc
class __$TimResponseCopyWithImpl<$Res> implements _$TimResponseCopyWith<$Res> {
  __$TimResponseCopyWithImpl(this._self, this._then);

  final _TimResponse _self;
  final $Res Function(_TimResponse) _then;

  /// Create a copy of TimResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_TimResponse(
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
              as List<TimModel>?,
    ));
  }
}

/// @nodoc
mixin _$TimModel {
  int get id;
  String get name;
  String get role;
  String get description;
  String get image;
  String? get instagram;
  String? get linkedin;
  @JsonKey(name: 'is_highlighted')
  bool get isHighlighted;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @JsonKey(name: 'image_url')
  String get imageUrl;

  /// Create a copy of TimModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimModelCopyWith<TimModel> get copyWith =>
      _$TimModelCopyWithImpl<TimModel>(this as TimModel, _$identity);

  /// Serializes this TimModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimModel &&
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
    return 'TimModel(id: $id, name: $name, role: $role, description: $description, image: $image, instagram: $instagram, linkedin: $linkedin, isHighlighted: $isHighlighted, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $TimModelCopyWith<$Res> {
  factory $TimModelCopyWith(TimModel value, $Res Function(TimModel) _then) =
      _$TimModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String role,
      String description,
      String image,
      String? instagram,
      String? linkedin,
      @JsonKey(name: 'is_highlighted') bool isHighlighted,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class _$TimModelCopyWithImpl<$Res> implements $TimModelCopyWith<$Res> {
  _$TimModelCopyWithImpl(this._self, this._then);

  final TimModel _self;
  final $Res Function(TimModel) _then;

  /// Create a copy of TimModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? description = null,
    Object? image = null,
    Object? instagram = freezed,
    Object? linkedin = freezed,
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
      instagram: freezed == instagram
          ? _self.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedin: freezed == linkedin
          ? _self.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _TimModel implements TimModel {
  const _TimModel(
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
  factory _TimModel.fromJson(Map<String, dynamic> json) =>
      _$TimModelFromJson(json);

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
  final String? instagram;
  @override
  final String? linkedin;
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

  /// Create a copy of TimModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimModelCopyWith<_TimModel> get copyWith =>
      __$TimModelCopyWithImpl<_TimModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TimModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimModel &&
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
    return 'TimModel(id: $id, name: $name, role: $role, description: $description, image: $image, instagram: $instagram, linkedin: $linkedin, isHighlighted: $isHighlighted, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$TimModelCopyWith<$Res>
    implements $TimModelCopyWith<$Res> {
  factory _$TimModelCopyWith(_TimModel value, $Res Function(_TimModel) _then) =
      __$TimModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String role,
      String description,
      String image,
      String? instagram,
      String? linkedin,
      @JsonKey(name: 'is_highlighted') bool isHighlighted,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class __$TimModelCopyWithImpl<$Res> implements _$TimModelCopyWith<$Res> {
  __$TimModelCopyWithImpl(this._self, this._then);

  final _TimModel _self;
  final $Res Function(_TimModel) _then;

  /// Create a copy of TimModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? description = null,
    Object? image = null,
    Object? instagram = freezed,
    Object? linkedin = freezed,
    Object? isHighlighted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? imageUrl = null,
  }) {
    return _then(_TimModel(
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
      instagram: freezed == instagram
          ? _self.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedin: freezed == linkedin
          ? _self.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
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
