// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availability_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AvailabilityState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AvailabilityState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AvailabilityState()';
  }
}

/// @nodoc
class $AvailabilityStateCopyWith<$Res> {
  $AvailabilityStateCopyWith(
      AvailabilityState _, $Res Function(AvailabilityState) __);
}

/// @nodoc

class AvailabilityInitial implements AvailabilityState {
  const AvailabilityInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AvailabilityInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AvailabilityState.initial()';
  }
}

/// @nodoc

class AvailabilityLoading implements AvailabilityState {
  const AvailabilityLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AvailabilityLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AvailabilityState.loading()';
  }
}

/// @nodoc

class AvailabilityLoaded implements AvailabilityState {
  const AvailabilityLoaded({required final List<DateTime> bookedDates})
      : _bookedDates = bookedDates;

  final List<DateTime> _bookedDates;
  List<DateTime> get bookedDates {
    if (_bookedDates is EqualUnmodifiableListView) return _bookedDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookedDates);
  }

  /// Create a copy of AvailabilityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AvailabilityLoadedCopyWith<AvailabilityLoaded> get copyWith =>
      _$AvailabilityLoadedCopyWithImpl<AvailabilityLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AvailabilityLoaded &&
            const DeepCollectionEquality()
                .equals(other._bookedDates, _bookedDates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bookedDates));

  @override
  String toString() {
    return 'AvailabilityState.loaded(bookedDates: $bookedDates)';
  }
}

/// @nodoc
abstract mixin class $AvailabilityLoadedCopyWith<$Res>
    implements $AvailabilityStateCopyWith<$Res> {
  factory $AvailabilityLoadedCopyWith(
          AvailabilityLoaded value, $Res Function(AvailabilityLoaded) _then) =
      _$AvailabilityLoadedCopyWithImpl;
  @useResult
  $Res call({List<DateTime> bookedDates});
}

/// @nodoc
class _$AvailabilityLoadedCopyWithImpl<$Res>
    implements $AvailabilityLoadedCopyWith<$Res> {
  _$AvailabilityLoadedCopyWithImpl(this._self, this._then);

  final AvailabilityLoaded _self;
  final $Res Function(AvailabilityLoaded) _then;

  /// Create a copy of AvailabilityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bookedDates = null,
  }) {
    return _then(AvailabilityLoaded(
      bookedDates: null == bookedDates
          ? _self._bookedDates
          : bookedDates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc

class AvailabilityChecked implements AvailabilityState {
  const AvailabilityChecked({required this.date, required this.isAvailable});

  final DateTime date;
  final bool isAvailable;

  /// Create a copy of AvailabilityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AvailabilityCheckedCopyWith<AvailabilityChecked> get copyWith =>
      _$AvailabilityCheckedCopyWithImpl<AvailabilityChecked>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AvailabilityChecked &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, isAvailable);

  @override
  String toString() {
    return 'AvailabilityState.availabilityChecked(date: $date, isAvailable: $isAvailable)';
  }
}

/// @nodoc
abstract mixin class $AvailabilityCheckedCopyWith<$Res>
    implements $AvailabilityStateCopyWith<$Res> {
  factory $AvailabilityCheckedCopyWith(
          AvailabilityChecked value, $Res Function(AvailabilityChecked) _then) =
      _$AvailabilityCheckedCopyWithImpl;
  @useResult
  $Res call({DateTime date, bool isAvailable});
}

/// @nodoc
class _$AvailabilityCheckedCopyWithImpl<$Res>
    implements $AvailabilityCheckedCopyWith<$Res> {
  _$AvailabilityCheckedCopyWithImpl(this._self, this._then);

  final AvailabilityChecked _self;
  final $Res Function(AvailabilityChecked) _then;

  /// Create a copy of AvailabilityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? isAvailable = null,
  }) {
    return _then(AvailabilityChecked(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAvailable: null == isAvailable
          ? _self.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class AvailabilityError implements AvailabilityState {
  const AvailabilityError({required this.message});

  final String message;

  /// Create a copy of AvailabilityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AvailabilityErrorCopyWith<AvailabilityError> get copyWith =>
      _$AvailabilityErrorCopyWithImpl<AvailabilityError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AvailabilityError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AvailabilityState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $AvailabilityErrorCopyWith<$Res>
    implements $AvailabilityStateCopyWith<$Res> {
  factory $AvailabilityErrorCopyWith(
          AvailabilityError value, $Res Function(AvailabilityError) _then) =
      _$AvailabilityErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AvailabilityErrorCopyWithImpl<$Res>
    implements $AvailabilityErrorCopyWith<$Res> {
  _$AvailabilityErrorCopyWithImpl(this._self, this._then);

  final AvailabilityError _self;
  final $Res Function(AvailabilityError) _then;

  /// Create a copy of AvailabilityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(AvailabilityError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
