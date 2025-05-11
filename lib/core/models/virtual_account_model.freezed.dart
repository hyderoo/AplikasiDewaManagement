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
  @JsonKey(name: 'bank_code')
  String get bankCode;
  String get name;
  @JsonKey(name: 'account_number')
  String? get accountNumber;
  @JsonKey(name: 'is_active')
  bool get isActive;
  String? get description;
  String? get logo;
  @JsonKey(name: 'payment_instructions')
  List<PaymentInstruction> get paymentInstructions;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;

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
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality()
                .equals(other.paymentInstructions, paymentInstructions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bankCode,
      name,
      accountNumber,
      isActive,
      description,
      logo,
      const DeepCollectionEquality().hash(paymentInstructions),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'VirtualAccountModel(id: $id, bankCode: $bankCode, name: $name, accountNumber: $accountNumber, isActive: $isActive, description: $description, logo: $logo, paymentInstructions: $paymentInstructions, createdAt: $createdAt, updatedAt: $updatedAt)';
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
      @JsonKey(name: 'bank_code') String bankCode,
      String name,
      @JsonKey(name: 'account_number') String? accountNumber,
      @JsonKey(name: 'is_active') bool isActive,
      String? description,
      String? logo,
      @JsonKey(name: 'payment_instructions')
      List<PaymentInstruction> paymentInstructions,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
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
    Object? bankCode = null,
    Object? name = null,
    Object? accountNumber = freezed,
    Object? isActive = null,
    Object? description = freezed,
    Object? logo = freezed,
    Object? paymentInstructions = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bankCode: null == bankCode
          ? _self.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: freezed == accountNumber
          ? _self.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentInstructions: null == paymentInstructions
          ? _self.paymentInstructions
          : paymentInstructions // ignore: cast_nullable_to_non_nullable
              as List<PaymentInstruction>,
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
class _VirtualAccountModel implements VirtualAccountModel {
  const _VirtualAccountModel(
      {required this.id,
      @JsonKey(name: 'bank_code') required this.bankCode,
      required this.name,
      @JsonKey(name: 'account_number') this.accountNumber,
      @JsonKey(name: 'is_active') required this.isActive,
      this.description,
      this.logo,
      @JsonKey(name: 'payment_instructions')
      required final List<PaymentInstruction> paymentInstructions,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : _paymentInstructions = paymentInstructions;
  factory _VirtualAccountModel.fromJson(Map<String, dynamic> json) =>
      _$VirtualAccountModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'bank_code')
  final String bankCode;
  @override
  final String name;
  @override
  @JsonKey(name: 'account_number')
  final String? accountNumber;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  final String? description;
  @override
  final String? logo;
  final List<PaymentInstruction> _paymentInstructions;
  @override
  @JsonKey(name: 'payment_instructions')
  List<PaymentInstruction> get paymentInstructions {
    if (_paymentInstructions is EqualUnmodifiableListView)
      return _paymentInstructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentInstructions);
  }

  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

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
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality()
                .equals(other._paymentInstructions, _paymentInstructions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bankCode,
      name,
      accountNumber,
      isActive,
      description,
      logo,
      const DeepCollectionEquality().hash(_paymentInstructions),
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'VirtualAccountModel(id: $id, bankCode: $bankCode, name: $name, accountNumber: $accountNumber, isActive: $isActive, description: $description, logo: $logo, paymentInstructions: $paymentInstructions, createdAt: $createdAt, updatedAt: $updatedAt)';
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
      @JsonKey(name: 'bank_code') String bankCode,
      String name,
      @JsonKey(name: 'account_number') String? accountNumber,
      @JsonKey(name: 'is_active') bool isActive,
      String? description,
      String? logo,
      @JsonKey(name: 'payment_instructions')
      List<PaymentInstruction> paymentInstructions,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
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
    Object? bankCode = null,
    Object? name = null,
    Object? accountNumber = freezed,
    Object? isActive = null,
    Object? description = freezed,
    Object? logo = freezed,
    Object? paymentInstructions = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_VirtualAccountModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bankCode: null == bankCode
          ? _self.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: freezed == accountNumber
          ? _self.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentInstructions: null == paymentInstructions
          ? _self._paymentInstructions
          : paymentInstructions // ignore: cast_nullable_to_non_nullable
              as List<PaymentInstruction>,
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
mixin _$PaymentInstruction {
  String get step;
  String get instruction;

  /// Create a copy of PaymentInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentInstructionCopyWith<PaymentInstruction> get copyWith =>
      _$PaymentInstructionCopyWithImpl<PaymentInstruction>(
          this as PaymentInstruction, _$identity);

  /// Serializes this PaymentInstruction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentInstruction &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.instruction, instruction) ||
                other.instruction == instruction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, step, instruction);

  @override
  String toString() {
    return 'PaymentInstruction(step: $step, instruction: $instruction)';
  }
}

/// @nodoc
abstract mixin class $PaymentInstructionCopyWith<$Res> {
  factory $PaymentInstructionCopyWith(
          PaymentInstruction value, $Res Function(PaymentInstruction) _then) =
      _$PaymentInstructionCopyWithImpl;
  @useResult
  $Res call({String step, String instruction});
}

/// @nodoc
class _$PaymentInstructionCopyWithImpl<$Res>
    implements $PaymentInstructionCopyWith<$Res> {
  _$PaymentInstructionCopyWithImpl(this._self, this._then);

  final PaymentInstruction _self;
  final $Res Function(PaymentInstruction) _then;

  /// Create a copy of PaymentInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? instruction = null,
  }) {
    return _then(_self.copyWith(
      step: null == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      instruction: null == instruction
          ? _self.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PaymentInstruction implements PaymentInstruction {
  const _PaymentInstruction({required this.step, required this.instruction});
  factory _PaymentInstruction.fromJson(Map<String, dynamic> json) =>
      _$PaymentInstructionFromJson(json);

  @override
  final String step;
  @override
  final String instruction;

  /// Create a copy of PaymentInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentInstructionCopyWith<_PaymentInstruction> get copyWith =>
      __$PaymentInstructionCopyWithImpl<_PaymentInstruction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentInstructionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentInstruction &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.instruction, instruction) ||
                other.instruction == instruction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, step, instruction);

  @override
  String toString() {
    return 'PaymentInstruction(step: $step, instruction: $instruction)';
  }
}

/// @nodoc
abstract mixin class _$PaymentInstructionCopyWith<$Res>
    implements $PaymentInstructionCopyWith<$Res> {
  factory _$PaymentInstructionCopyWith(
          _PaymentInstruction value, $Res Function(_PaymentInstruction) _then) =
      __$PaymentInstructionCopyWithImpl;
  @override
  @useResult
  $Res call({String step, String instruction});
}

/// @nodoc
class __$PaymentInstructionCopyWithImpl<$Res>
    implements _$PaymentInstructionCopyWith<$Res> {
  __$PaymentInstructionCopyWithImpl(this._self, this._then);

  final _PaymentInstruction _self;
  final $Res Function(_PaymentInstruction) _then;

  /// Create a copy of PaymentInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? step = null,
    Object? instruction = null,
  }) {
    return _then(_PaymentInstruction(
      step: null == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      instruction: null == instruction
          ? _self.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
