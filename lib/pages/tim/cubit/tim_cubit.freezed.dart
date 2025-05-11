// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tim_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TimState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TimState()';
  }
}

/// @nodoc
class $TimStateCopyWith<$Res> {
  $TimStateCopyWith(TimState _, $Res Function(TimState) __);
}

/// @nodoc

class TimInitial implements TimState {
  const TimInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TimInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TimState.initial()';
  }
}

/// @nodoc

class TimLoading implements TimState {
  const TimLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TimLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TimState.loading()';
  }
}

/// @nodoc

class TimSuccess implements TimState {
  const TimSuccess({required final List<TimModel> tim, this.message})
      : _tim = tim;

  final List<TimModel> _tim;
  List<TimModel> get tim {
    if (_tim is EqualUnmodifiableListView) return _tim;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tim);
  }

  final String? message;

  /// Create a copy of TimState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimSuccessCopyWith<TimSuccess> get copyWith =>
      _$TimSuccessCopyWithImpl<TimSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimSuccess &&
            const DeepCollectionEquality().equals(other._tim, _tim) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tim), message);

  @override
  String toString() {
    return 'TimState.success(tim: $tim, message: $message)';
  }
}

/// @nodoc
abstract mixin class $TimSuccessCopyWith<$Res>
    implements $TimStateCopyWith<$Res> {
  factory $TimSuccessCopyWith(
          TimSuccess value, $Res Function(TimSuccess) _then) =
      _$TimSuccessCopyWithImpl;
  @useResult
  $Res call({List<TimModel> tim, String? message});
}

/// @nodoc
class _$TimSuccessCopyWithImpl<$Res> implements $TimSuccessCopyWith<$Res> {
  _$TimSuccessCopyWithImpl(this._self, this._then);

  final TimSuccess _self;
  final $Res Function(TimSuccess) _then;

  /// Create a copy of TimState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tim = null,
    Object? message = freezed,
  }) {
    return _then(TimSuccess(
      tim: null == tim
          ? _self._tim
          : tim // ignore: cast_nullable_to_non_nullable
              as List<TimModel>,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class TimError implements TimState {
  const TimError({required this.message});

  final String message;

  /// Create a copy of TimState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimErrorCopyWith<TimError> get copyWith =>
      _$TimErrorCopyWithImpl<TimError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'TimState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $TimErrorCopyWith<$Res>
    implements $TimStateCopyWith<$Res> {
  factory $TimErrorCopyWith(TimError value, $Res Function(TimError) _then) =
      _$TimErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$TimErrorCopyWithImpl<$Res> implements $TimErrorCopyWith<$Res> {
  _$TimErrorCopyWithImpl(this._self, this._then);

  final TimError _self;
  final $Res Function(TimError) _then;

  /// Create a copy of TimState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(TimError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
