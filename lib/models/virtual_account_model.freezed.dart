// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'virtual_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VirtualAccountModel {
  int get id;
  String get name;
  @JsonKey(name: 'bank_code')
  String get bankCode;
  String? get logo;
  String? get description;
  @JsonKey(name: 'payment_instructions')
  Map<String, dynamic>? get paymentInstructions;

  /// Create a copy of VirtualAccountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VirtualAccountModelCopyWith<VirtualAccountModel> get copyWith =>
      _$VirtualAccountModelCopyWithImpl<VirtualAccountModel>(
          this as VirtualAccountModel, _$identity);

  /// Serializes this VirtualAccountModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VirtualAccountModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.paymentInstructions, paymentInstructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, bankCode, logo,
      description, const DeepCollectionEquality().hash(paymentInstructions));

  @override
  String toString() {
    return 'VirtualAccountModel(id: $id, name: $name, bankCode: $bankCode, logo: $logo, description: $description, paymentInstructions: $paymentInstructions)';
  }
}

/// @nodoc
abstract mixin class $VirtualAccountModelCopyWith<$Res> {
  factory $VirtualAccountModelCopyWith(
          VirtualAccountModel value, $Res Function(VirtualAccountModel) _then) =
      _$VirtualAccountModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'bank_code') String bankCode,
      String? logo,
      String? description,
      @JsonKey(name: 'payment_instructions')
      Map<String, dynamic>? paymentInstructions});
}

/// @nodoc
class _$VirtualAccountModelCopyWithImpl<$Res>
    implements $VirtualAccountModelCopyWith<$Res> {
  _$VirtualAccountModelCopyWithImpl(this._self, this._then);

  final VirtualAccountModel _self;
  final $Res Function(VirtualAccountModel) _then;

  /// Create a copy of VirtualAccountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bankCode = null,
    Object? logo = freezed,
    Object? description = freezed,
    Object? paymentInstructions = freezed,
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
      bankCode: null == bankCode
          ? _self.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentInstructions: freezed == paymentInstructions
          ? _self.paymentInstructions
          : paymentInstructions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _VirtualAccountModel implements VirtualAccountModel {
  const _VirtualAccountModel(
      {required this.id,
      required this.name,
      @JsonKey(name: 'bank_code') required this.bankCode,
      this.logo,
      this.description,
      @JsonKey(name: 'payment_instructions')
      final Map<String, dynamic>? paymentInstructions})
      : _paymentInstructions = paymentInstructions;
  factory _VirtualAccountModel.fromJson(Map<String, dynamic> json) =>
      _$VirtualAccountModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'bank_code')
  final String bankCode;
  @override
  final String? logo;
  @override
  final String? description;
  final Map<String, dynamic>? _paymentInstructions;
  @override
  @JsonKey(name: 'payment_instructions')
  Map<String, dynamic>? get paymentInstructions {
    final value = _paymentInstructions;
    if (value == null) return null;
    if (_paymentInstructions is EqualUnmodifiableMapView)
      return _paymentInstructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of VirtualAccountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VirtualAccountModelCopyWith<_VirtualAccountModel> get copyWith =>
      __$VirtualAccountModelCopyWithImpl<_VirtualAccountModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VirtualAccountModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VirtualAccountModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._paymentInstructions, _paymentInstructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, bankCode, logo,
      description, const DeepCollectionEquality().hash(_paymentInstructions));

  @override
  String toString() {
    return 'VirtualAccountModel(id: $id, name: $name, bankCode: $bankCode, logo: $logo, description: $description, paymentInstructions: $paymentInstructions)';
  }
}

/// @nodoc
abstract mixin class _$VirtualAccountModelCopyWith<$Res>
    implements $VirtualAccountModelCopyWith<$Res> {
  factory _$VirtualAccountModelCopyWith(_VirtualAccountModel value,
          $Res Function(_VirtualAccountModel) _then) =
      __$VirtualAccountModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'bank_code') String bankCode,
      String? logo,
      String? description,
      @JsonKey(name: 'payment_instructions')
      Map<String, dynamic>? paymentInstructions});
}

/// @nodoc
class __$VirtualAccountModelCopyWithImpl<$Res>
    implements _$VirtualAccountModelCopyWith<$Res> {
  __$VirtualAccountModelCopyWithImpl(this._self, this._then);

  final _VirtualAccountModel _self;
  final $Res Function(_VirtualAccountModel) _then;

  /// Create a copy of VirtualAccountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bankCode = null,
    Object? logo = freezed,
    Object? description = freezed,
    Object? paymentInstructions = freezed,
  }) {
    return _then(_VirtualAccountModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode: null == bankCode
          ? _self.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentInstructions: freezed == paymentInstructions
          ? _self._paymentInstructions
          : paymentInstructions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
