// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderState()';
  }
}

/// @nodoc
class $OrderStateCopyWith<$Res> {
  $OrderStateCopyWith(OrderState _, $Res Function(OrderState) __);
}

/// @nodoc

class OrderInitial implements OrderState {
  const OrderInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderState.initial()';
  }
}

/// @nodoc

class OrderLoading implements OrderState {
  const OrderLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderState.loading()';
  }
}

/// @nodoc

class OrderSuccess implements OrderState {
  const OrderSuccess(
      {required final List<OrderModel> orders,
      required final List<OrderModel> filteredOrders,
      required this.selectedStatus,
      this.message})
      : _orders = orders,
        _filteredOrders = filteredOrders;

  final List<OrderModel> _orders;
  List<OrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  final List<OrderModel> _filteredOrders;
  List<OrderModel> get filteredOrders {
    if (_filteredOrders is EqualUnmodifiableListView) return _filteredOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredOrders);
  }

  final String selectedStatus;
  final String? message;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderSuccessCopyWith<OrderSuccess> get copyWith =>
      _$OrderSuccessCopyWithImpl<OrderSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderSuccess &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality()
                .equals(other._filteredOrders, _filteredOrders) &&
            (identical(other.selectedStatus, selectedStatus) ||
                other.selectedStatus == selectedStatus) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_filteredOrders),
      selectedStatus,
      message);

  @override
  String toString() {
    return 'OrderState.success(orders: $orders, filteredOrders: $filteredOrders, selectedStatus: $selectedStatus, message: $message)';
  }
}

/// @nodoc
abstract mixin class $OrderSuccessCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory $OrderSuccessCopyWith(
          OrderSuccess value, $Res Function(OrderSuccess) _then) =
      _$OrderSuccessCopyWithImpl;
  @useResult
  $Res call(
      {List<OrderModel> orders,
      List<OrderModel> filteredOrders,
      String selectedStatus,
      String? message});
}

/// @nodoc
class _$OrderSuccessCopyWithImpl<$Res> implements $OrderSuccessCopyWith<$Res> {
  _$OrderSuccessCopyWithImpl(this._self, this._then);

  final OrderSuccess _self;
  final $Res Function(OrderSuccess) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orders = null,
    Object? filteredOrders = null,
    Object? selectedStatus = null,
    Object? message = freezed,
  }) {
    return _then(OrderSuccess(
      orders: null == orders
          ? _self._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      filteredOrders: null == filteredOrders
          ? _self._filteredOrders
          : filteredOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      selectedStatus: null == selectedStatus
          ? _self.selectedStatus
          : selectedStatus // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class OrderError implements OrderState {
  const OrderError({required this.message});

  final String message;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderErrorCopyWith<OrderError> get copyWith =>
      _$OrderErrorCopyWithImpl<OrderError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'OrderState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $OrderErrorCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory $OrderErrorCopyWith(
          OrderError value, $Res Function(OrderError) _then) =
      _$OrderErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$OrderErrorCopyWithImpl<$Res> implements $OrderErrorCopyWith<$Res> {
  _$OrderErrorCopyWithImpl(this._self, this._then);

  final OrderError _self;
  final $Res Function(OrderError) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(OrderError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
