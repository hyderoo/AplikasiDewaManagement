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
      required final List<BankModel> banks,
      required final List<VirtualAccountModel> virtualAccounts,
      this.selectedVirtualAccount,
      this.virtualAccountNumber,
      this.expiredAt,
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

  final VirtualAccountModel? selectedVirtualAccount;
  final String? virtualAccountNumber;
  final DateTime? expiredAt;
  final String? message;

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
            const DeepCollectionEquality().equals(other._banks, _banks) &&
            const DeepCollectionEquality()
                .equals(other._virtualAccounts, _virtualAccounts) &&
            (identical(other.selectedVirtualAccount, selectedVirtualAccount) ||
                other.selectedVirtualAccount == selectedVirtualAccount) &&
            (identical(other.virtualAccountNumber, virtualAccountNumber) ||
                other.virtualAccountNumber == virtualAccountNumber) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      order,
      const DeepCollectionEquality().hash(_banks),
      const DeepCollectionEquality().hash(_virtualAccounts),
      selectedVirtualAccount,
      virtualAccountNumber,
      expiredAt,
      message);

  @override
  String toString() {
    return 'PaymentDetailState.success(order: $order, banks: $banks, virtualAccounts: $virtualAccounts, selectedVirtualAccount: $selectedVirtualAccount, virtualAccountNumber: $virtualAccountNumber, expiredAt: $expiredAt, message: $message)';
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
      List<BankModel> banks,
      List<VirtualAccountModel> virtualAccounts,
      VirtualAccountModel? selectedVirtualAccount,
      String? virtualAccountNumber,
      DateTime? expiredAt,
      String? message});

  $OrderModelCopyWith<$Res> get order;
  $VirtualAccountModelCopyWith<$Res>? get selectedVirtualAccount;
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
    Object? banks = null,
    Object? virtualAccounts = null,
    Object? selectedVirtualAccount = freezed,
    Object? virtualAccountNumber = freezed,
    Object? expiredAt = freezed,
    Object? message = freezed,
  }) {
    return _then(PaymentDetailSuccess(
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
      selectedVirtualAccount: freezed == selectedVirtualAccount
          ? _self.selectedVirtualAccount
          : selectedVirtualAccount // ignore: cast_nullable_to_non_nullable
              as VirtualAccountModel?,
      virtualAccountNumber: freezed == virtualAccountNumber
          ? _self.virtualAccountNumber
          : virtualAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredAt: freezed == expiredAt
          ? _self.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
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
