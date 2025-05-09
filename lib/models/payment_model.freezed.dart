// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentModel {
  int get id;
  @JsonKey(name: 'order_id')
  int get orderId;
  @JsonKey(name: 'user_id')
  int get userId;
  @JsonKey(name: 'payment_type')
  String get paymentType;
  @JsonKey(name: 'payment_method')
  String get paymentMethod;
  @JsonKey(name: 'bank_code')
  String? get bankCode;
  double get amount;
  String get status;
  @JsonKey(name: 'transaction_id')
  String? get transactionId;
  @JsonKey(name: 'va_number')
  String? get vaNumber;
  @JsonKey(name: 'payment_proof')
  String? get paymentProof;
  @JsonKey(name: 'payment_proof_url')
  String? get paymentProofUrl;
  @JsonKey(name: 'payment_data')
  String? get paymentData;
  String? get note;
  @JsonKey(name: 'expiry_time')
  String? get expiryTime;
  @JsonKey(name: 'verified_at')
  String? get verifiedAt;
  @JsonKey(name: 'rejected_at')
  String? get rejectedAt;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      _$PaymentModelCopyWithImpl<PaymentModel>(
          this as PaymentModel, _$identity);

  /// Serializes this PaymentModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.vaNumber, vaNumber) ||
                other.vaNumber == vaNumber) &&
            (identical(other.paymentProof, paymentProof) ||
                other.paymentProof == paymentProof) &&
            (identical(other.paymentProofUrl, paymentProofUrl) ||
                other.paymentProofUrl == paymentProofUrl) &&
            (identical(other.paymentData, paymentData) ||
                other.paymentData == paymentData) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.expiryTime, expiryTime) ||
                other.expiryTime == expiryTime) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        orderId,
        userId,
        paymentType,
        paymentMethod,
        bankCode,
        amount,
        status,
        transactionId,
        vaNumber,
        paymentProof,
        paymentProofUrl,
        paymentData,
        note,
        expiryTime,
        verifiedAt,
        rejectedAt,
        createdAt,
        updatedAt
      ]);

  @override
  String toString() {
    return 'PaymentModel(id: $id, orderId: $orderId, userId: $userId, paymentType: $paymentType, paymentMethod: $paymentMethod, bankCode: $bankCode, amount: $amount, status: $status, transactionId: $transactionId, vaNumber: $vaNumber, paymentProof: $paymentProof, paymentProofUrl: $paymentProofUrl, paymentData: $paymentData, note: $note, expiryTime: $expiryTime, verifiedAt: $verifiedAt, rejectedAt: $rejectedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) _then) =
      _$PaymentModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'order_id') int orderId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'payment_type') String paymentType,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'bank_code') String? bankCode,
      double amount,
      String status,
      @JsonKey(name: 'transaction_id') String? transactionId,
      @JsonKey(name: 'va_number') String? vaNumber,
      @JsonKey(name: 'payment_proof') String? paymentProof,
      @JsonKey(name: 'payment_proof_url') String? paymentProofUrl,
      @JsonKey(name: 'payment_data') String? paymentData,
      String? note,
      @JsonKey(name: 'expiry_time') String? expiryTime,
      @JsonKey(name: 'verified_at') String? verifiedAt,
      @JsonKey(name: 'rejected_at') String? rejectedAt,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res> implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._self, this._then);

  final PaymentModel _self;
  final $Res Function(PaymentModel) _then;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? userId = null,
    Object? paymentType = null,
    Object? paymentMethod = null,
    Object? bankCode = freezed,
    Object? amount = null,
    Object? status = null,
    Object? transactionId = freezed,
    Object? vaNumber = freezed,
    Object? paymentProof = freezed,
    Object? paymentProofUrl = freezed,
    Object? paymentData = freezed,
    Object? note = freezed,
    Object? expiryTime = freezed,
    Object? verifiedAt = freezed,
    Object? rejectedAt = freezed,
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
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentType: null == paymentType
          ? _self.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode: freezed == bankCode
          ? _self.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: freezed == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      vaNumber: freezed == vaNumber
          ? _self.vaNumber
          : vaNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentProof: freezed == paymentProof
          ? _self.paymentProof
          : paymentProof // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentProofUrl: freezed == paymentProofUrl
          ? _self.paymentProofUrl
          : paymentProofUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentData: freezed == paymentData
          ? _self.paymentData
          : paymentData // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryTime: freezed == expiryTime
          ? _self.expiryTime
          : expiryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedAt: freezed == verifiedAt
          ? _self.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _PaymentModel implements PaymentModel {
  const _PaymentModel(
      {required this.id,
      @JsonKey(name: 'order_id') required this.orderId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'payment_type') required this.paymentType,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      @JsonKey(name: 'bank_code') this.bankCode,
      required this.amount,
      required this.status,
      @JsonKey(name: 'transaction_id') this.transactionId,
      @JsonKey(name: 'va_number') this.vaNumber,
      @JsonKey(name: 'payment_proof') this.paymentProof,
      @JsonKey(name: 'payment_proof_url') this.paymentProofUrl,
      @JsonKey(name: 'payment_data') this.paymentData,
      this.note,
      @JsonKey(name: 'expiry_time') this.expiryTime,
      @JsonKey(name: 'verified_at') this.verifiedAt,
      @JsonKey(name: 'rejected_at') this.rejectedAt,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'order_id')
  final int orderId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'payment_type')
  final String paymentType;
  @override
  @JsonKey(name: 'payment_method')
  final String paymentMethod;
  @override
  @JsonKey(name: 'bank_code')
  final String? bankCode;
  @override
  final double amount;
  @override
  final String status;
  @override
  @JsonKey(name: 'transaction_id')
  final String? transactionId;
  @override
  @JsonKey(name: 'va_number')
  final String? vaNumber;
  @override
  @JsonKey(name: 'payment_proof')
  final String? paymentProof;
  @override
  @JsonKey(name: 'payment_proof_url')
  final String? paymentProofUrl;
  @override
  @JsonKey(name: 'payment_data')
  final String? paymentData;
  @override
  final String? note;
  @override
  @JsonKey(name: 'expiry_time')
  final String? expiryTime;
  @override
  @JsonKey(name: 'verified_at')
  final String? verifiedAt;
  @override
  @JsonKey(name: 'rejected_at')
  final String? rejectedAt;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentModelCopyWith<_PaymentModel> get copyWith =>
      __$PaymentModelCopyWithImpl<_PaymentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaymentModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.vaNumber, vaNumber) ||
                other.vaNumber == vaNumber) &&
            (identical(other.paymentProof, paymentProof) ||
                other.paymentProof == paymentProof) &&
            (identical(other.paymentProofUrl, paymentProofUrl) ||
                other.paymentProofUrl == paymentProofUrl) &&
            (identical(other.paymentData, paymentData) ||
                other.paymentData == paymentData) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.expiryTime, expiryTime) ||
                other.expiryTime == expiryTime) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.rejectedAt, rejectedAt) ||
                other.rejectedAt == rejectedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        orderId,
        userId,
        paymentType,
        paymentMethod,
        bankCode,
        amount,
        status,
        transactionId,
        vaNumber,
        paymentProof,
        paymentProofUrl,
        paymentData,
        note,
        expiryTime,
        verifiedAt,
        rejectedAt,
        createdAt,
        updatedAt
      ]);

  @override
  String toString() {
    return 'PaymentModel(id: $id, orderId: $orderId, userId: $userId, paymentType: $paymentType, paymentMethod: $paymentMethod, bankCode: $bankCode, amount: $amount, status: $status, transactionId: $transactionId, vaNumber: $vaNumber, paymentProof: $paymentProof, paymentProofUrl: $paymentProofUrl, paymentData: $paymentData, note: $note, expiryTime: $expiryTime, verifiedAt: $verifiedAt, rejectedAt: $rejectedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$PaymentModelCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$PaymentModelCopyWith(
          _PaymentModel value, $Res Function(_PaymentModel) _then) =
      __$PaymentModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'order_id') int orderId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'payment_type') String paymentType,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'bank_code') String? bankCode,
      double amount,
      String status,
      @JsonKey(name: 'transaction_id') String? transactionId,
      @JsonKey(name: 'va_number') String? vaNumber,
      @JsonKey(name: 'payment_proof') String? paymentProof,
      @JsonKey(name: 'payment_proof_url') String? paymentProofUrl,
      @JsonKey(name: 'payment_data') String? paymentData,
      String? note,
      @JsonKey(name: 'expiry_time') String? expiryTime,
      @JsonKey(name: 'verified_at') String? verifiedAt,
      @JsonKey(name: 'rejected_at') String? rejectedAt,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$PaymentModelCopyWithImpl<$Res>
    implements _$PaymentModelCopyWith<$Res> {
  __$PaymentModelCopyWithImpl(this._self, this._then);

  final _PaymentModel _self;
  final $Res Function(_PaymentModel) _then;

  /// Create a copy of PaymentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? userId = null,
    Object? paymentType = null,
    Object? paymentMethod = null,
    Object? bankCode = freezed,
    Object? amount = null,
    Object? status = null,
    Object? transactionId = freezed,
    Object? vaNumber = freezed,
    Object? paymentProof = freezed,
    Object? paymentProofUrl = freezed,
    Object? paymentData = freezed,
    Object? note = freezed,
    Object? expiryTime = freezed,
    Object? verifiedAt = freezed,
    Object? rejectedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_PaymentModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentType: null == paymentType
          ? _self.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode: freezed == bankCode
          ? _self.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: freezed == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      vaNumber: freezed == vaNumber
          ? _self.vaNumber
          : vaNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentProof: freezed == paymentProof
          ? _self.paymentProof
          : paymentProof // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentProofUrl: freezed == paymentProofUrl
          ? _self.paymentProofUrl
          : paymentProofUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentData: freezed == paymentData
          ? _self.paymentData
          : paymentData // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryTime: freezed == expiryTime
          ? _self.expiryTime
          : expiryTime // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedAt: freezed == verifiedAt
          ? _self.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedAt: freezed == rejectedAt
          ? _self.rejectedAt
          : rejectedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
