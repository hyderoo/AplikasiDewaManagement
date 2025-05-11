// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentHistoryState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentHistoryState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentHistoryState()';
  }
}

/// @nodoc
class $PaymentHistoryStateCopyWith<$Res> {
  $PaymentHistoryStateCopyWith(
      PaymentHistoryState _, $Res Function(PaymentHistoryState) __);
}

/// @nodoc

class PaymentHistoryInitial implements PaymentHistoryState {
  const PaymentHistoryInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentHistoryInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentHistoryState.initial()';
  }
}

/// @nodoc

class PaymentHistoryLoading implements PaymentHistoryState {
  const PaymentHistoryLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentHistoryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentHistoryState.loading()';
  }
}

/// @nodoc

class PaymentHistorySuccess implements PaymentHistoryState {
  const PaymentHistorySuccess(
      {required this.order, required final List<PaymentModel> payments})
      : _payments = payments;

  final OrderModel order;
  final List<PaymentModel> _payments;
  List<PaymentModel> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  /// Create a copy of PaymentHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentHistorySuccessCopyWith<PaymentHistorySuccess> get copyWith =>
      _$PaymentHistorySuccessCopyWithImpl<PaymentHistorySuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentHistorySuccess &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._payments, _payments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, order, const DeepCollectionEquality().hash(_payments));

  @override
  String toString() {
    return 'PaymentHistoryState.success(order: $order, payments: $payments)';
  }
}

/// @nodoc
abstract mixin class $PaymentHistorySuccessCopyWith<$Res>
    implements $PaymentHistoryStateCopyWith<$Res> {
  factory $PaymentHistorySuccessCopyWith(PaymentHistorySuccess value,
          $Res Function(PaymentHistorySuccess) _then) =
      _$PaymentHistorySuccessCopyWithImpl;
  @useResult
  $Res call({OrderModel order, List<PaymentModel> payments});

  $OrderModelCopyWith<$Res> get order;
}

/// @nodoc
class _$PaymentHistorySuccessCopyWithImpl<$Res>
    implements $PaymentHistorySuccessCopyWith<$Res> {
  _$PaymentHistorySuccessCopyWithImpl(this._self, this._then);

  final PaymentHistorySuccess _self;
  final $Res Function(PaymentHistorySuccess) _then;

  /// Create a copy of PaymentHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? order = null,
    Object? payments = null,
  }) {
    return _then(PaymentHistorySuccess(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
      payments: null == payments
          ? _self._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentModel>,
    ));
  }

  /// Create a copy of PaymentHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res> get order {
    return $OrderModelCopyWith<$Res>(_self.order, (value) {
      return _then(_self.copyWith(order: value));
    });
  }
}

/// @nodoc

class PaymentHistoryError implements PaymentHistoryState {
  const PaymentHistoryError({required this.message});

  final String message;

  /// Create a copy of PaymentHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentHistoryErrorCopyWith<PaymentHistoryError> get copyWith =>
      _$PaymentHistoryErrorCopyWithImpl<PaymentHistoryError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentHistoryError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'PaymentHistoryState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $PaymentHistoryErrorCopyWith<$Res>
    implements $PaymentHistoryStateCopyWith<$Res> {
  factory $PaymentHistoryErrorCopyWith(
          PaymentHistoryError value, $Res Function(PaymentHistoryError) _then) =
      _$PaymentHistoryErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$PaymentHistoryErrorCopyWithImpl<$Res>
    implements $PaymentHistoryErrorCopyWith<$Res> {
  _$PaymentHistoryErrorCopyWithImpl(this._self, this._then);

  final PaymentHistoryError _self;
  final $Res Function(PaymentHistoryError) _then;

  /// Create a copy of PaymentHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(PaymentHistoryError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
