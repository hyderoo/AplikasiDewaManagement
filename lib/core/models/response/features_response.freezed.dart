// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'features_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeaturesResponse {
  String get status;
  String get message;
  FeaturesData? get data;

  /// Create a copy of FeaturesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeaturesResponseCopyWith<FeaturesResponse> get copyWith =>
      _$FeaturesResponseCopyWithImpl<FeaturesResponse>(
          this as FeaturesResponse, _$identity);

  /// Serializes this FeaturesResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeaturesResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @override
  String toString() {
    return 'FeaturesResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $FeaturesResponseCopyWith<$Res> {
  factory $FeaturesResponseCopyWith(
          FeaturesResponse value, $Res Function(FeaturesResponse) _then) =
      _$FeaturesResponseCopyWithImpl;
  @useResult
  $Res call({String status, String message, FeaturesData? data});

  $FeaturesDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FeaturesResponseCopyWithImpl<$Res>
    implements $FeaturesResponseCopyWith<$Res> {
  _$FeaturesResponseCopyWithImpl(this._self, this._then);

  final FeaturesResponse _self;
  final $Res Function(FeaturesResponse) _then;

  /// Create a copy of FeaturesResponse
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
              as FeaturesData?,
    ));
  }

  /// Create a copy of FeaturesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeaturesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $FeaturesDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _FeaturesResponse implements FeaturesResponse {
  const _FeaturesResponse(
      {required this.status, required this.message, this.data});
  factory _FeaturesResponse.fromJson(Map<String, dynamic> json) =>
      _$FeaturesResponseFromJson(json);

  @override
  final String status;
  @override
  final String message;
  @override
  final FeaturesData? data;

  /// Create a copy of FeaturesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeaturesResponseCopyWith<_FeaturesResponse> get copyWith =>
      __$FeaturesResponseCopyWithImpl<_FeaturesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeaturesResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeaturesResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @override
  String toString() {
    return 'FeaturesResponse(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$FeaturesResponseCopyWith<$Res>
    implements $FeaturesResponseCopyWith<$Res> {
  factory _$FeaturesResponseCopyWith(
          _FeaturesResponse value, $Res Function(_FeaturesResponse) _then) =
      __$FeaturesResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String status, String message, FeaturesData? data});

  @override
  $FeaturesDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$FeaturesResponseCopyWithImpl<$Res>
    implements _$FeaturesResponseCopyWith<$Res> {
  __$FeaturesResponseCopyWithImpl(this._self, this._then);

  final _FeaturesResponse _self;
  final $Res Function(_FeaturesResponse) _then;

  /// Create a copy of FeaturesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_FeaturesResponse(
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
              as FeaturesData?,
    ));
  }

  /// Create a copy of FeaturesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeaturesDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $FeaturesDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$FeaturesData {
  List<FeatureModel> get features;

  /// Create a copy of FeaturesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeaturesDataCopyWith<FeaturesData> get copyWith =>
      _$FeaturesDataCopyWithImpl<FeaturesData>(
          this as FeaturesData, _$identity);

  /// Serializes this FeaturesData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeaturesData &&
            const DeepCollectionEquality().equals(other.features, features));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(features));

  @override
  String toString() {
    return 'FeaturesData(features: $features)';
  }
}

/// @nodoc
abstract mixin class $FeaturesDataCopyWith<$Res> {
  factory $FeaturesDataCopyWith(
          FeaturesData value, $Res Function(FeaturesData) _then) =
      _$FeaturesDataCopyWithImpl;
  @useResult
  $Res call({List<FeatureModel> features});
}

/// @nodoc
class _$FeaturesDataCopyWithImpl<$Res> implements $FeaturesDataCopyWith<$Res> {
  _$FeaturesDataCopyWithImpl(this._self, this._then);

  final FeaturesData _self;
  final $Res Function(FeaturesData) _then;

  /// Create a copy of FeaturesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = null,
  }) {
    return _then(_self.copyWith(
      features: null == features
          ? _self.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<FeatureModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FeaturesData implements FeaturesData {
  const _FeaturesData({required final List<FeatureModel> features})
      : _features = features;
  factory _FeaturesData.fromJson(Map<String, dynamic> json) =>
      _$FeaturesDataFromJson(json);

  final List<FeatureModel> _features;
  @override
  List<FeatureModel> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  /// Create a copy of FeaturesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeaturesDataCopyWith<_FeaturesData> get copyWith =>
      __$FeaturesDataCopyWithImpl<_FeaturesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeaturesDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeaturesData &&
            const DeepCollectionEquality().equals(other._features, _features));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_features));

  @override
  String toString() {
    return 'FeaturesData(features: $features)';
  }
}

/// @nodoc
abstract mixin class _$FeaturesDataCopyWith<$Res>
    implements $FeaturesDataCopyWith<$Res> {
  factory _$FeaturesDataCopyWith(
          _FeaturesData value, $Res Function(_FeaturesData) _then) =
      __$FeaturesDataCopyWithImpl;
  @override
  @useResult
  $Res call({List<FeatureModel> features});
}

/// @nodoc
class __$FeaturesDataCopyWithImpl<$Res>
    implements _$FeaturesDataCopyWith<$Res> {
  __$FeaturesDataCopyWithImpl(this._self, this._then);

  final _FeaturesData _self;
  final $Res Function(_FeaturesData) _then;

  /// Create a copy of FeaturesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? features = null,
  }) {
    return _then(_FeaturesData(
      features: null == features
          ? _self._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<FeatureModel>,
    ));
  }
}

/// @nodoc
mixin _$FeatureModel {
  int get id;
  String get name;
  String get price;
  String get description;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of FeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeatureModelCopyWith<FeatureModel> get copyWith =>
      _$FeatureModelCopyWithImpl<FeatureModel>(
          this as FeatureModel, _$identity);

  /// Serializes this FeatureModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeatureModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, price, description, createdAt, updatedAt);

  @override
  String toString() {
    return 'FeatureModel(id: $id, name: $name, price: $price, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $FeatureModelCopyWith<$Res> {
  factory $FeatureModelCopyWith(
          FeatureModel value, $Res Function(FeatureModel) _then) =
      _$FeatureModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String price,
      String description,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$FeatureModelCopyWithImpl<$Res> implements $FeatureModelCopyWith<$Res> {
  _$FeatureModelCopyWithImpl(this._self, this._then);

  final FeatureModel _self;
  final $Res Function(FeatureModel) _then;

  /// Create a copy of FeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _FeatureModel implements FeatureModel {
  const _FeatureModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.description,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _FeatureModel.fromJson(Map<String, dynamic> json) =>
      _$FeatureModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String price;
  @override
  final String description;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  /// Create a copy of FeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeatureModelCopyWith<_FeatureModel> get copyWith =>
      __$FeatureModelCopyWithImpl<_FeatureModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeatureModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeatureModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, price, description, createdAt, updatedAt);

  @override
  String toString() {
    return 'FeatureModel(id: $id, name: $name, price: $price, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$FeatureModelCopyWith<$Res>
    implements $FeatureModelCopyWith<$Res> {
  factory _$FeatureModelCopyWith(
          _FeatureModel value, $Res Function(_FeatureModel) _then) =
      __$FeatureModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String price,
      String description,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$FeatureModelCopyWithImpl<$Res>
    implements _$FeatureModelCopyWith<$Res> {
  __$FeatureModelCopyWithImpl(this._self, this._then);

  final _FeatureModel _self;
  final $Res Function(_FeatureModel) _then;

  /// Create a copy of FeatureModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_FeatureModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
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
