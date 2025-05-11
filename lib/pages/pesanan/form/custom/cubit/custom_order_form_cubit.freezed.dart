// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_order_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomOrderFormState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CustomOrderFormState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CustomOrderFormState()';
  }
}

/// @nodoc
class $CustomOrderFormStateCopyWith<$Res> {
  $CustomOrderFormStateCopyWith(
      CustomOrderFormState _, $Res Function(CustomOrderFormState) __);
}

/// @nodoc

class CustomOrderFormInitial implements CustomOrderFormState {
  const CustomOrderFormInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CustomOrderFormInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CustomOrderFormState.initial()';
  }
}

/// @nodoc

class CustomOrderFormLoading implements CustomOrderFormState {
  const CustomOrderFormLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CustomOrderFormLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CustomOrderFormState.loading()';
  }
}

/// @nodoc

class CustomOrderFormSuccess implements CustomOrderFormState {
  const CustomOrderFormSuccess({required this.order, this.message});

  final OrderModel order;
  final String? message;

  /// Create a copy of CustomOrderFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomOrderFormSuccessCopyWith<CustomOrderFormSuccess> get copyWith =>
      _$CustomOrderFormSuccessCopyWithImpl<CustomOrderFormSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomOrderFormSuccess &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, message);

  @override
  String toString() {
    return 'CustomOrderFormState.success(order: $order, message: $message)';
  }
}

/// @nodoc
abstract mixin class $CustomOrderFormSuccessCopyWith<$Res>
    implements $CustomOrderFormStateCopyWith<$Res> {
  factory $CustomOrderFormSuccessCopyWith(CustomOrderFormSuccess value,
          $Res Function(CustomOrderFormSuccess) _then) =
      _$CustomOrderFormSuccessCopyWithImpl;
  @useResult
  $Res call({OrderModel order, String? message});

  $OrderModelCopyWith<$Res> get order;
}

/// @nodoc
class _$CustomOrderFormSuccessCopyWithImpl<$Res>
    implements $CustomOrderFormSuccessCopyWith<$Res> {
  _$CustomOrderFormSuccessCopyWithImpl(this._self, this._then);

  final CustomOrderFormSuccess _self;
  final $Res Function(CustomOrderFormSuccess) _then;

  /// Create a copy of CustomOrderFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? order = null,
    Object? message = freezed,
  }) {
    return _then(CustomOrderFormSuccess(
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

  /// Create a copy of CustomOrderFormState
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

class CustomOrderFormError implements CustomOrderFormState {
  const CustomOrderFormError({required this.message});

  final String message;

  /// Create a copy of CustomOrderFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomOrderFormErrorCopyWith<CustomOrderFormError> get copyWith =>
      _$CustomOrderFormErrorCopyWithImpl<CustomOrderFormError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomOrderFormError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CustomOrderFormState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $CustomOrderFormErrorCopyWith<$Res>
    implements $CustomOrderFormStateCopyWith<$Res> {
  factory $CustomOrderFormErrorCopyWith(CustomOrderFormError value,
          $Res Function(CustomOrderFormError) _then) =
      _$CustomOrderFormErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CustomOrderFormErrorCopyWithImpl<$Res>
    implements $CustomOrderFormErrorCopyWith<$Res> {
  _$CustomOrderFormErrorCopyWithImpl(this._self, this._then);

  final CustomOrderFormError _self;
  final $Res Function(CustomOrderFormError) _then;

  /// Create a copy of CustomOrderFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(CustomOrderFormError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
