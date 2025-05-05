// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PortfolioState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PortfolioState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PortfolioState()';
  }
}

/// @nodoc
class $PortfolioStateCopyWith<$Res> {
  $PortfolioStateCopyWith(PortfolioState _, $Res Function(PortfolioState) __);
}

/// @nodoc

class PortfolioInitial implements PortfolioState {
  const PortfolioInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PortfolioInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PortfolioState.initial()';
  }
}

/// @nodoc

class PortfolioLoading implements PortfolioState {
  const PortfolioLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PortfolioLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PortfolioState.loading()';
  }
}

/// @nodoc

class PortfolioSuccess implements PortfolioState {
  const PortfolioSuccess(
      {required final List<PortfolioModel> portfolios, this.message})
      : _portfolios = portfolios;

  final List<PortfolioModel> _portfolios;
  List<PortfolioModel> get portfolios {
    if (_portfolios is EqualUnmodifiableListView) return _portfolios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_portfolios);
  }

  final String? message;

  /// Create a copy of PortfolioState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PortfolioSuccessCopyWith<PortfolioSuccess> get copyWith =>
      _$PortfolioSuccessCopyWithImpl<PortfolioSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PortfolioSuccess &&
            const DeepCollectionEquality()
                .equals(other._portfolios, _portfolios) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_portfolios), message);

  @override
  String toString() {
    return 'PortfolioState.success(portfolios: $portfolios, message: $message)';
  }
}

/// @nodoc
abstract mixin class $PortfolioSuccessCopyWith<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  factory $PortfolioSuccessCopyWith(
          PortfolioSuccess value, $Res Function(PortfolioSuccess) _then) =
      _$PortfolioSuccessCopyWithImpl;
  @useResult
  $Res call({List<PortfolioModel> portfolios, String? message});
}

/// @nodoc
class _$PortfolioSuccessCopyWithImpl<$Res>
    implements $PortfolioSuccessCopyWith<$Res> {
  _$PortfolioSuccessCopyWithImpl(this._self, this._then);

  final PortfolioSuccess _self;
  final $Res Function(PortfolioSuccess) _then;

  /// Create a copy of PortfolioState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? portfolios = null,
    Object? message = freezed,
  }) {
    return _then(PortfolioSuccess(
      portfolios: null == portfolios
          ? _self._portfolios
          : portfolios // ignore: cast_nullable_to_non_nullable
              as List<PortfolioModel>,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class PortfolioError implements PortfolioState {
  const PortfolioError({required this.message});

  final String message;

  /// Create a copy of PortfolioState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PortfolioErrorCopyWith<PortfolioError> get copyWith =>
      _$PortfolioErrorCopyWithImpl<PortfolioError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PortfolioError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'PortfolioState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $PortfolioErrorCopyWith<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  factory $PortfolioErrorCopyWith(
          PortfolioError value, $Res Function(PortfolioError) _then) =
      _$PortfolioErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$PortfolioErrorCopyWithImpl<$Res>
    implements $PortfolioErrorCopyWith<$Res> {
  _$PortfolioErrorCopyWithImpl(this._self, this._then);

  final PortfolioError _self;
  final $Res Function(PortfolioError) _then;

  /// Create a copy of PortfolioState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(PortfolioError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
