// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderFormState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderFormState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderFormState()';
  }
}

/// @nodoc
class $OrderFormStateCopyWith<$Res> {
  $OrderFormStateCopyWith(OrderFormState _, $Res Function(OrderFormState) __);
}

/// @nodoc

class OrderFormInitial implements OrderFormState {
  const OrderFormInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderFormInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderFormState.initial()';
  }
}

/// @nodoc

class OrderFormLoading implements OrderFormState {
  const OrderFormLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderFormLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderFormState.loading()';
  }
}

/// @nodoc

class OrderFormSuccess implements OrderFormState {
  const OrderFormSuccess({required this.order, this.message});

  final OrderModel order;
  final String? message;

  /// Create a copy of OrderFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderFormSuccessCopyWith<OrderFormSuccess> get copyWith =>
      _$OrderFormSuccessCopyWithImpl<OrderFormSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderFormSuccess &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, message);

  @override
  String toString() {
    return 'OrderFormState.success(order: $order, message: $message)';
  }
}

/// @nodoc
abstract mixin class $OrderFormSuccessCopyWith<$Res>
    implements $OrderFormStateCopyWith<$Res> {
  factory $OrderFormSuccessCopyWith(
          OrderFormSuccess value, $Res Function(OrderFormSuccess) _then) =
      _$OrderFormSuccessCopyWithImpl;
  @useResult
  $Res call({OrderModel order, String? message});

  $OrderModelCopyWith<$Res> get order;
}

/// @nodoc
class _$OrderFormSuccessCopyWithImpl<$Res>
    implements $OrderFormSuccessCopyWith<$Res> {
  _$OrderFormSuccessCopyWithImpl(this._self, this._then);

  final OrderFormSuccess _self;
  final $Res Function(OrderFormSuccess) _then;

  /// Create a copy of OrderFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? order = null,
    Object? message = freezed,
  }) {
    return _then(OrderFormSuccess(
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

  /// Create a copy of OrderFormState
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

class OrderFormError implements OrderFormState {
  const OrderFormError({required this.message});

  final String message;

  /// Create a copy of OrderFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderFormErrorCopyWith<OrderFormError> get copyWith =>
      _$OrderFormErrorCopyWithImpl<OrderFormError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderFormError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'OrderFormState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $OrderFormErrorCopyWith<$Res>
    implements $OrderFormStateCopyWith<$Res> {
  factory $OrderFormErrorCopyWith(
          OrderFormError value, $Res Function(OrderFormError) _then) =
      _$OrderFormErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$OrderFormErrorCopyWithImpl<$Res>
    implements $OrderFormErrorCopyWith<$Res> {
  _$OrderFormErrorCopyWithImpl(this._self, this._then);

  final OrderFormError _self;
  final $Res Function(OrderFormError) _then;

  /// Create a copy of OrderFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(OrderFormError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
