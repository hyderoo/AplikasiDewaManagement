// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeamState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TeamState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TeamState()';
  }
}

/// @nodoc
class $TeamStateCopyWith<$Res> {
  $TeamStateCopyWith(TeamState _, $Res Function(TeamState) __);
}

/// @nodoc

class TeamInitial implements TeamState {
  const TeamInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TeamInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TeamState.initial()';
  }
}

/// @nodoc

class TeamLoading implements TeamState {
  const TeamLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TeamLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TeamState.loading()';
  }
}

/// @nodoc

class TeamSuccess implements TeamState {
  const TeamSuccess({required final List<TeamModel> team, this.message})
      : _team = team;

  final List<TeamModel> _team;
  List<TeamModel> get team {
    if (_team is EqualUnmodifiableListView) return _team;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_team);
  }

  final String? message;

  /// Create a copy of TeamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TeamSuccessCopyWith<TeamSuccess> get copyWith =>
      _$TeamSuccessCopyWithImpl<TeamSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TeamSuccess &&
            const DeepCollectionEquality().equals(other._team, _team) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_team), message);

  @override
  String toString() {
    return 'TeamState.success(team: $team, message: $message)';
  }
}

/// @nodoc
abstract mixin class $TeamSuccessCopyWith<$Res>
    implements $TeamStateCopyWith<$Res> {
  factory $TeamSuccessCopyWith(
          TeamSuccess value, $Res Function(TeamSuccess) _then) =
      _$TeamSuccessCopyWithImpl;
  @useResult
  $Res call({List<TeamModel> team, String? message});
}

/// @nodoc
class _$TeamSuccessCopyWithImpl<$Res> implements $TeamSuccessCopyWith<$Res> {
  _$TeamSuccessCopyWithImpl(this._self, this._then);

  final TeamSuccess _self;
  final $Res Function(TeamSuccess) _then;

  /// Create a copy of TeamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? team = null,
    Object? message = freezed,
  }) {
    return _then(TeamSuccess(
      team: null == team
          ? _self._team
          : team // ignore: cast_nullable_to_non_nullable
              as List<TeamModel>,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class TeamError implements TeamState {
  const TeamError({required this.message});

  final String message;

  /// Create a copy of TeamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TeamErrorCopyWith<TeamError> get copyWith =>
      _$TeamErrorCopyWithImpl<TeamError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TeamError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'TeamState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $TeamErrorCopyWith<$Res>
    implements $TeamStateCopyWith<$Res> {
  factory $TeamErrorCopyWith(TeamError value, $Res Function(TeamError) _then) =
      _$TeamErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$TeamErrorCopyWithImpl<$Res> implements $TeamErrorCopyWith<$Res> {
  _$TeamErrorCopyWithImpl(this._self, this._then);

  final TeamError _self;
  final $Res Function(TeamError) _then;

  /// Create a copy of TeamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(TeamError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
