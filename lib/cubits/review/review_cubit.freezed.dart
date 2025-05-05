// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReviewState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReviewState()';
  }
}

/// @nodoc
class $ReviewStateCopyWith<$Res> {
  $ReviewStateCopyWith(ReviewState _, $Res Function(ReviewState) __);
}

/// @nodoc

class ReviewInitial implements ReviewState {
  const ReviewInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReviewInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReviewState.initial()';
  }
}

/// @nodoc

class ReviewLoading implements ReviewState {
  const ReviewLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReviewLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReviewState.loading()';
  }
}

/// @nodoc

class ReviewSuccess implements ReviewState {
  const ReviewSuccess({required final List<ReviewModel> reviews, this.message})
      : _reviews = reviews;

  final List<ReviewModel> _reviews;
  List<ReviewModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  final String? message;

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReviewSuccessCopyWith<ReviewSuccess> get copyWith =>
      _$ReviewSuccessCopyWithImpl<ReviewSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReviewSuccess &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reviews), message);

  @override
  String toString() {
    return 'ReviewState.success(reviews: $reviews, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ReviewSuccessCopyWith<$Res>
    implements $ReviewStateCopyWith<$Res> {
  factory $ReviewSuccessCopyWith(
          ReviewSuccess value, $Res Function(ReviewSuccess) _then) =
      _$ReviewSuccessCopyWithImpl;
  @useResult
  $Res call({List<ReviewModel> reviews, String? message});
}

/// @nodoc
class _$ReviewSuccessCopyWithImpl<$Res>
    implements $ReviewSuccessCopyWith<$Res> {
  _$ReviewSuccessCopyWithImpl(this._self, this._then);

  final ReviewSuccess _self;
  final $Res Function(ReviewSuccess) _then;

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reviews = null,
    Object? message = freezed,
  }) {
    return _then(ReviewSuccess(
      reviews: null == reviews
          ? _self._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class ReviewError implements ReviewState {
  const ReviewError({required this.message});

  final String message;

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReviewErrorCopyWith<ReviewError> get copyWith =>
      _$ReviewErrorCopyWithImpl<ReviewError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReviewError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ReviewState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ReviewErrorCopyWith<$Res>
    implements $ReviewStateCopyWith<$Res> {
  factory $ReviewErrorCopyWith(
          ReviewError value, $Res Function(ReviewError) _then) =
      _$ReviewErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ReviewErrorCopyWithImpl<$Res> implements $ReviewErrorCopyWith<$Res> {
  _$ReviewErrorCopyWithImpl(this._self, this._then);

  final ReviewError _self;
  final $Res Function(ReviewError) _then;

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ReviewError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
