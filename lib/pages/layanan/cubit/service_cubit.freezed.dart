// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServiceState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ServiceState()';
  }
}

/// @nodoc
class $ServiceStateCopyWith<$Res> {
  $ServiceStateCopyWith(ServiceState _, $Res Function(ServiceState) __);
}

/// @nodoc

class ServiceInitial implements ServiceState {
  const ServiceInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServiceInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ServiceState.initial()';
  }
}

/// @nodoc

class ServiceLoading implements ServiceState {
  const ServiceLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServiceLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ServiceState.loading()';
  }
}

/// @nodoc

class ServiceSuccess implements ServiceState {
  const ServiceSuccess(
      {required final List<CatalogModel> services, this.message})
      : _services = services;

  final List<CatalogModel> _services;
  List<CatalogModel> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  final String? message;

  /// Create a copy of ServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServiceSuccessCopyWith<ServiceSuccess> get copyWith =>
      _$ServiceSuccessCopyWithImpl<ServiceSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServiceSuccess &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_services), message);

  @override
  String toString() {
    return 'ServiceState.success(services: $services, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ServiceSuccessCopyWith<$Res>
    implements $ServiceStateCopyWith<$Res> {
  factory $ServiceSuccessCopyWith(
          ServiceSuccess value, $Res Function(ServiceSuccess) _then) =
      _$ServiceSuccessCopyWithImpl;
  @useResult
  $Res call({List<CatalogModel> services, String? message});
}

/// @nodoc
class _$ServiceSuccessCopyWithImpl<$Res>
    implements $ServiceSuccessCopyWith<$Res> {
  _$ServiceSuccessCopyWithImpl(this._self, this._then);

  final ServiceSuccess _self;
  final $Res Function(ServiceSuccess) _then;

  /// Create a copy of ServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? services = null,
    Object? message = freezed,
  }) {
    return _then(ServiceSuccess(
      services: null == services
          ? _self._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<CatalogModel>,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class ServiceError implements ServiceState {
  const ServiceError({required this.message});

  final String message;

  /// Create a copy of ServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServiceErrorCopyWith<ServiceError> get copyWith =>
      _$ServiceErrorCopyWithImpl<ServiceError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServiceError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ServiceState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ServiceErrorCopyWith<$Res>
    implements $ServiceStateCopyWith<$Res> {
  factory $ServiceErrorCopyWith(
          ServiceError value, $Res Function(ServiceError) _then) =
      _$ServiceErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ServiceErrorCopyWithImpl<$Res> implements $ServiceErrorCopyWith<$Res> {
  _$ServiceErrorCopyWithImpl(this._self, this._then);

  final ServiceError _self;
  final $Res Function(ServiceError) _then;

  /// Create a copy of ServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ServiceError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
