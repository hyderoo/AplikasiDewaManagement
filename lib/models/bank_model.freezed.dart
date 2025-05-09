// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BankModel {
  int get id;
  String get name;
  String get code;
  @JsonKey(name: 'account_number')
  String get accountNumber;
  @JsonKey(name: 'account_name')
  String get accountName;
  String? get logo;

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BankModelCopyWith<BankModel> get copyWith =>
      _$BankModelCopyWithImpl<BankModel>(this as BankModel, _$identity);

  /// Serializes this BankModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BankModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, code, accountNumber, accountName, logo);

  @override
  String toString() {
    return 'BankModel(id: $id, name: $name, code: $code, accountNumber: $accountNumber, accountName: $accountName, logo: $logo)';
  }
}

/// @nodoc
abstract mixin class $BankModelCopyWith<$Res> {
  factory $BankModelCopyWith(BankModel value, $Res Function(BankModel) _then) =
      _$BankModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String code,
      @JsonKey(name: 'account_number') String accountNumber,
      @JsonKey(name: 'account_name') String accountName,
      String? logo});
}

/// @nodoc
class _$BankModelCopyWithImpl<$Res> implements $BankModelCopyWith<$Res> {
  _$BankModelCopyWithImpl(this._self, this._then);

  final BankModel _self;
  final $Res Function(BankModel) _then;

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? accountNumber = null,
    Object? accountName = null,
    Object? logo = freezed,
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
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _self.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BankModel implements BankModel {
  const _BankModel(
      {required this.id,
      required this.name,
      required this.code,
      @JsonKey(name: 'account_number') required this.accountNumber,
      @JsonKey(name: 'account_name') required this.accountName,
      this.logo});
  factory _BankModel.fromJson(Map<String, dynamic> json) =>
      _$BankModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String code;
  @override
  @JsonKey(name: 'account_number')
  final String accountNumber;
  @override
  @JsonKey(name: 'account_name')
  final String accountName;
  @override
  final String? logo;

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BankModelCopyWith<_BankModel> get copyWith =>
      __$BankModelCopyWithImpl<_BankModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BankModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, code, accountNumber, accountName, logo);

  @override
  String toString() {
    return 'BankModel(id: $id, name: $name, code: $code, accountNumber: $accountNumber, accountName: $accountName, logo: $logo)';
  }
}

/// @nodoc
abstract mixin class _$BankModelCopyWith<$Res>
    implements $BankModelCopyWith<$Res> {
  factory _$BankModelCopyWith(
          _BankModel value, $Res Function(_BankModel) _then) =
      __$BankModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String code,
      @JsonKey(name: 'account_number') String accountNumber,
      @JsonKey(name: 'account_name') String accountName,
      String? logo});
}

/// @nodoc
class __$BankModelCopyWithImpl<$Res> implements _$BankModelCopyWith<$Res> {
  __$BankModelCopyWithImpl(this._self, this._then);

  final _BankModel _self;
  final $Res Function(_BankModel) _then;

  /// Create a copy of BankModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? accountNumber = null,
    Object? accountName = null,
    Object? logo = freezed,
  }) {
    return _then(_BankModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _self.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _self.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
