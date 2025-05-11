// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDetailState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderDetailState()';
  }
}

/// @nodoc
class $OrderDetailStateCopyWith<$Res> {
  $OrderDetailStateCopyWith(
      OrderDetailState _, $Res Function(OrderDetailState) __);
}

/// @nodoc

class OrderDetailInitial implements OrderDetailState {
  const OrderDetailInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderDetailInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderDetailState.initial()';
  }
}

/// @nodoc

class OrderDetailLoading implements OrderDetailState {
  const OrderDetailLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderDetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderDetailState.loading()';
  }
}

/// @nodoc

class OrderDetailSuccess implements OrderDetailState {
  const OrderDetailSuccess({required this.order, this.message});

  final OrderModel order;
  final String? message;

  /// Create a copy of OrderDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderDetailSuccessCopyWith<OrderDetailSuccess> get copyWith =>
      _$OrderDetailSuccessCopyWithImpl<OrderDetailSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderDetailSuccess &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, message);

  @override
  String toString() {
    return 'OrderDetailState.success(order: $order, message: $message)';
  }
}

/// @nodoc
abstract mixin class $OrderDetailSuccessCopyWith<$Res>
    implements $OrderDetailStateCopyWith<$Res> {
  factory $OrderDetailSuccessCopyWith(
          OrderDetailSuccess value, $Res Function(OrderDetailSuccess) _then) =
      _$OrderDetailSuccessCopyWithImpl;
  @useResult
  $Res call({OrderModel order, String? message});

  $OrderModelCopyWith<$Res> get order;
}

/// @nodoc
class _$OrderDetailSuccessCopyWithImpl<$Res>
    implements $OrderDetailSuccessCopyWith<$Res> {
  _$OrderDetailSuccessCopyWithImpl(this._self, this._then);

  final OrderDetailSuccess _self;
  final $Res Function(OrderDetailSuccess) _then;

  /// Create a copy of OrderDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? order = null,
    Object? message = freezed,
  }) {
    return _then(OrderDetailSuccess(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of OrderDetailState
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

class OrderDetailError implements OrderDetailState {
  const OrderDetailError({required this.message});

  final String message;

  /// Create a copy of OrderDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderDetailErrorCopyWith<OrderDetailError> get copyWith =>
      _$OrderDetailErrorCopyWithImpl<OrderDetailError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderDetailError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'OrderDetailState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $OrderDetailErrorCopyWith<$Res>
    implements $OrderDetailStateCopyWith<$Res> {
  factory $OrderDetailErrorCopyWith(
          OrderDetailError value, $Res Function(OrderDetailError) _then) =
      _$OrderDetailErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$OrderDetailErrorCopyWithImpl<$Res>
    implements $OrderDetailErrorCopyWith<$Res> {
  _$OrderDetailErrorCopyWithImpl(this._self, this._then);

  final OrderDetailError _self;
  final $Res Function(OrderDetailError) _then;

  /// Create a copy of OrderDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(OrderDetailError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
