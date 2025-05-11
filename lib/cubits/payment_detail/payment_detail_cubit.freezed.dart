// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentDetailState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentDetailState()';
  }
}

/// @nodoc
class $PaymentDetailStateCopyWith<$Res> {
  $PaymentDetailStateCopyWith(
      PaymentDetailState _, $Res Function(PaymentDetailState) __);
}

/// @nodoc

class PaymentDetailInitial implements PaymentDetailState {
  const PaymentDetailInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentDetailInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentDetailState.initial()';
  }
}

/// @nodoc

class PaymentDetailLoading implements PaymentDetailState {
  const PaymentDetailLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentDetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentDetailState.loading()';
  }
}

/// @nodoc

class PaymentDetailSuccess implements PaymentDetailState {
  const PaymentDetailSuccess(
      {required this.order,
      required this.virtualAccountNumber,
      required this.virtualAccount,
      required this.expiredAt,
      required this.amount,
      this.message,
      this.isPaymentConfirmed});

  final OrderModel order;
  final String virtualAccountNumber;
  final VirtualAccountModel virtualAccount;
  final DateTime expiredAt;
  final double amount;
  final String? message;
  final bool? isPaymentConfirmed;

  /// Create a copy of PaymentDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentDetailSuccessCopyWith<PaymentDetailSuccess> get copyWith =>
      _$PaymentDetailSuccessCopyWithImpl<PaymentDetailSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentDetailSuccess &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.virtualAccountNumber, virtualAccountNumber) ||
                other.virtualAccountNumber == virtualAccountNumber) &&
            (identical(other.virtualAccount, virtualAccount) ||
                other.virtualAccount == virtualAccount) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isPaymentConfirmed, isPaymentConfirmed) ||
                other.isPaymentConfirmed == isPaymentConfirmed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, virtualAccountNumber,
      virtualAccount, expiredAt, amount, message, isPaymentConfirmed);

  @override
  String toString() {
    return 'PaymentDetailState.success(order: $order, virtualAccountNumber: $virtualAccountNumber, virtualAccount: $virtualAccount, expiredAt: $expiredAt, amount: $amount, message: $message, isPaymentConfirmed: $isPaymentConfirmed)';
  }
}

/// @nodoc
abstract mixin class $PaymentDetailSuccessCopyWith<$Res>
    implements $PaymentDetailStateCopyWith<$Res> {
  factory $PaymentDetailSuccessCopyWith(PaymentDetailSuccess value,
          $Res Function(PaymentDetailSuccess) _then) =
      _$PaymentDetailSuccessCopyWithImpl;
  @useResult
  $Res call(
      {OrderModel order,
      String virtualAccountNumber,
      VirtualAccountModel virtualAccount,
      DateTime expiredAt,
      double amount,
      String? message,
      bool? isPaymentConfirmed});

  $OrderModelCopyWith<$Res> get order;
  $VirtualAccountModelCopyWith<$Res> get virtualAccount;
}

/// @nodoc
class _$PaymentDetailSuccessCopyWithImpl<$Res>
    implements $PaymentDetailSuccessCopyWith<$Res> {
  _$PaymentDetailSuccessCopyWithImpl(this._self, this._then);

  final PaymentDetailSuccess _self;
  final $Res Function(PaymentDetailSuccess) _then;

  /// Create a copy of PaymentDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? order = null,
    Object? virtualAccountNumber = null,
    Object? virtualAccount = null,
    Object? expiredAt = null,
    Object? amount = null,
    Object? message = freezed,
    Object? isPaymentConfirmed = freezed,
  }) {
    return _then(PaymentDetailSuccess(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
      virtualAccountNumber: null == virtualAccountNumber
          ? _self.virtualAccountNumber
          : virtualAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      virtualAccount: null == virtualAccount
          ? _self.virtualAccount
          : virtualAccount // ignore: cast_nullable_to_non_nullable
              as VirtualAccountModel,
      expiredAt: null == expiredAt
          ? _self.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaymentConfirmed: freezed == isPaymentConfirmed
          ? _self.isPaymentConfirmed
          : isPaymentConfirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of PaymentDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res> get order {
    return $OrderModelCopyWith<$Res>(_self.order, (value) {
      return _then(_self.copyWith(order: value));
    });
  }

  /// Create a copy of PaymentDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VirtualAccountModelCopyWith<$Res> get virtualAccount {
    return $VirtualAccountModelCopyWith<$Res>(_self.virtualAccount, (value) {
      return _then(_self.copyWith(virtualAccount: value));
    });
  }
}

/// @nodoc

class PaymentDetailError implements PaymentDetailState {
  const PaymentDetailError({required this.message});

  final String message;

  /// Create a copy of PaymentDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentDetailErrorCopyWith<PaymentDetailError> get copyWith =>
      _$PaymentDetailErrorCopyWithImpl<PaymentDetailError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentDetailError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'PaymentDetailState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $PaymentDetailErrorCopyWith<$Res>
    implements $PaymentDetailStateCopyWith<$Res> {
  factory $PaymentDetailErrorCopyWith(
          PaymentDetailError value, $Res Function(PaymentDetailError) _then) =
      _$PaymentDetailErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$PaymentDetailErrorCopyWithImpl<$Res>
    implements $PaymentDetailErrorCopyWith<$Res> {
  _$PaymentDetailErrorCopyWithImpl(this._self, this._then);

  final PaymentDetailError _self;
  final $Res Function(PaymentDetailError) _then;

  /// Create a copy of PaymentDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(PaymentDetailError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
