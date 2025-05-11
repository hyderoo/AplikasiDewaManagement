// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentMethodState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentMethodState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentMethodState()';
  }
}

/// @nodoc
class $PaymentMethodStateCopyWith<$Res> {
  $PaymentMethodStateCopyWith(
      PaymentMethodState _, $Res Function(PaymentMethodState) __);
}

/// @nodoc

class PaymentMethodInitial implements PaymentMethodState {
  const PaymentMethodInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentMethodInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentMethodState.initial()';
  }
}

/// @nodoc

class PaymentMethodLoading implements PaymentMethodState {
  const PaymentMethodLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentMethodLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentMethodState.loading()';
  }
}

/// @nodoc

class PaymentMethodSuccess implements PaymentMethodState {
  const PaymentMethodSuccess(
      {required this.order,
      required final List<BankModel> banks,
      required final List<VirtualAccountModel> virtualAccounts,
      this.selectedBank,
      this.selectedVirtualAccount,
      required this.selectedPaymentType,
      required this.selectedPaymentMethod,
      required this.paymentAmount,
      this.paymentProofPath,
      this.message})
      : _banks = banks,
        _virtualAccounts = virtualAccounts;

  final OrderModel order;
  final List<BankModel> _banks;
  List<BankModel> get banks {
    if (_banks is EqualUnmodifiableListView) return _banks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banks);
  }

  final List<VirtualAccountModel> _virtualAccounts;
  List<VirtualAccountModel> get virtualAccounts {
    if (_virtualAccounts is EqualUnmodifiableListView) return _virtualAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_virtualAccounts);
  }

  final BankModel? selectedBank;
  final VirtualAccountModel? selectedVirtualAccount;
  final PaymentType selectedPaymentType;
  final PaymentMethod selectedPaymentMethod;
  final double paymentAmount;
  final String? paymentProofPath;
  final String? message;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentMethodSuccessCopyWith<PaymentMethodSuccess> get copyWith =>
      _$PaymentMethodSuccessCopyWithImpl<PaymentMethodSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentMethodSuccess &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._banks, _banks) &&
            const DeepCollectionEquality()
                .equals(other._virtualAccounts, _virtualAccounts) &&
            (identical(other.selectedBank, selectedBank) ||
                other.selectedBank == selectedBank) &&
            (identical(other.selectedVirtualAccount, selectedVirtualAccount) ||
                other.selectedVirtualAccount == selectedVirtualAccount) &&
            (identical(other.selectedPaymentType, selectedPaymentType) ||
                other.selectedPaymentType == selectedPaymentType) &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentProofPath, paymentProofPath) ||
                other.paymentProofPath == paymentProofPath) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      order,
      const DeepCollectionEquality().hash(_banks),
      const DeepCollectionEquality().hash(_virtualAccounts),
      selectedBank,
      selectedVirtualAccount,
      selectedPaymentType,
      selectedPaymentMethod,
      paymentAmount,
      paymentProofPath,
      message);

  @override
  String toString() {
    return 'PaymentMethodState.success(order: $order, banks: $banks, virtualAccounts: $virtualAccounts, selectedBank: $selectedBank, selectedVirtualAccount: $selectedVirtualAccount, selectedPaymentType: $selectedPaymentType, selectedPaymentMethod: $selectedPaymentMethod, paymentAmount: $paymentAmount, paymentProofPath: $paymentProofPath, message: $message)';
  }
}

/// @nodoc
abstract mixin class $PaymentMethodSuccessCopyWith<$Res>
    implements $PaymentMethodStateCopyWith<$Res> {
  factory $PaymentMethodSuccessCopyWith(PaymentMethodSuccess value,
          $Res Function(PaymentMethodSuccess) _then) =
      _$PaymentMethodSuccessCopyWithImpl;
  @useResult
  $Res call(
      {OrderModel order,
      List<BankModel> banks,
      List<VirtualAccountModel> virtualAccounts,
      BankModel? selectedBank,
      VirtualAccountModel? selectedVirtualAccount,
      PaymentType selectedPaymentType,
      PaymentMethod selectedPaymentMethod,
      double paymentAmount,
      String? paymentProofPath,
      String? message});

  $OrderModelCopyWith<$Res> get order;
  $BankModelCopyWith<$Res>? get selectedBank;
  $VirtualAccountModelCopyWith<$Res>? get selectedVirtualAccount;
}

/// @nodoc
class _$PaymentMethodSuccessCopyWithImpl<$Res>
    implements $PaymentMethodSuccessCopyWith<$Res> {
  _$PaymentMethodSuccessCopyWithImpl(this._self, this._then);

  final PaymentMethodSuccess _self;
  final $Res Function(PaymentMethodSuccess) _then;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? order = null,
    Object? banks = null,
    Object? virtualAccounts = null,
    Object? selectedBank = freezed,
    Object? selectedVirtualAccount = freezed,
    Object? selectedPaymentType = null,
    Object? selectedPaymentMethod = null,
    Object? paymentAmount = null,
    Object? paymentProofPath = freezed,
    Object? message = freezed,
  }) {
    return _then(PaymentMethodSuccess(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
      banks: null == banks
          ? _self._banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<BankModel>,
      virtualAccounts: null == virtualAccounts
          ? _self._virtualAccounts
          : virtualAccounts // ignore: cast_nullable_to_non_nullable
              as List<VirtualAccountModel>,
      selectedBank: freezed == selectedBank
          ? _self.selectedBank
          : selectedBank // ignore: cast_nullable_to_non_nullable
              as BankModel?,
      selectedVirtualAccount: freezed == selectedVirtualAccount
          ? _self.selectedVirtualAccount
          : selectedVirtualAccount // ignore: cast_nullable_to_non_nullable
              as VirtualAccountModel?,
      selectedPaymentType: null == selectedPaymentType
          ? _self.selectedPaymentType
          : selectedPaymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      selectedPaymentMethod: null == selectedPaymentMethod
          ? _self.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      paymentAmount: null == paymentAmount
          ? _self.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentProofPath: freezed == paymentProofPath
          ? _self.paymentProofPath
          : paymentProofPath // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res> get order {
    return $OrderModelCopyWith<$Res>(_self.order, (value) {
      return _then(_self.copyWith(order: value));
    });
  }

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BankModelCopyWith<$Res>? get selectedBank {
    if (_self.selectedBank == null) {
      return null;
    }

    return $BankModelCopyWith<$Res>(_self.selectedBank!, (value) {
      return _then(_self.copyWith(selectedBank: value));
    });
  }

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VirtualAccountModelCopyWith<$Res>? get selectedVirtualAccount {
    if (_self.selectedVirtualAccount == null) {
      return null;
    }

    return $VirtualAccountModelCopyWith<$Res>(_self.selectedVirtualAccount!,
        (value) {
      return _then(_self.copyWith(selectedVirtualAccount: value));
    });
  }
}

/// @nodoc

class PaymentMethodError implements PaymentMethodState {
  const PaymentMethodError({required this.message});

  final String message;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentMethodErrorCopyWith<PaymentMethodError> get copyWith =>
      _$PaymentMethodErrorCopyWithImpl<PaymentMethodError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentMethodError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'PaymentMethodState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $PaymentMethodErrorCopyWith<$Res>
    implements $PaymentMethodStateCopyWith<$Res> {
  factory $PaymentMethodErrorCopyWith(
          PaymentMethodError value, $Res Function(PaymentMethodError) _then) =
      _$PaymentMethodErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$PaymentMethodErrorCopyWithImpl<$Res>
    implements $PaymentMethodErrorCopyWith<$Res> {
  _$PaymentMethodErrorCopyWithImpl(this._self, this._then);

  final PaymentMethodError _self;
  final $Res Function(PaymentMethodError) _then;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(PaymentMethodError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class PaymentMethodSubmitted implements PaymentMethodState {
  const PaymentMethodSubmitted(
      {required this.paymentId, required this.paymentMethod});

  final int paymentId;
  final PaymentMethod paymentMethod;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentMethodSubmittedCopyWith<PaymentMethodSubmitted> get copyWith =>
      _$PaymentMethodSubmittedCopyWithImpl<PaymentMethodSubmitted>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentMethodSubmitted &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentId, paymentMethod);

  @override
  String toString() {
    return 'PaymentMethodState.submitted(paymentId: $paymentId, paymentMethod: $paymentMethod)';
  }
}

/// @nodoc
abstract mixin class $PaymentMethodSubmittedCopyWith<$Res>
    implements $PaymentMethodStateCopyWith<$Res> {
  factory $PaymentMethodSubmittedCopyWith(PaymentMethodSubmitted value,
          $Res Function(PaymentMethodSubmitted) _then) =
      _$PaymentMethodSubmittedCopyWithImpl;
  @useResult
  $Res call({int paymentId, PaymentMethod paymentMethod});
}

/// @nodoc
class _$PaymentMethodSubmittedCopyWithImpl<$Res>
    implements $PaymentMethodSubmittedCopyWith<$Res> {
  _$PaymentMethodSubmittedCopyWithImpl(this._self, this._then);

  final PaymentMethodSubmitted _self;
  final $Res Function(PaymentMethodSubmitted) _then;

  /// Create a copy of PaymentMethodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? paymentId = null,
    Object? paymentMethod = null,
  }) {
    return _then(PaymentMethodSubmitted(
      paymentId: null == paymentId
          ? _self.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
    ));
  }
}

// dart format on
