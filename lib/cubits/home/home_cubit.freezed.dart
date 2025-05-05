// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState()';
  }
}

/// @nodoc
class $HomeStateCopyWith<$Res> {
  $HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}

/// @nodoc

class HomeInitial implements HomeState {
  const HomeInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState.initial()';
  }
}

/// @nodoc

class HomeLoading implements HomeState {
  const HomeLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState.loading()';
  }
}

/// @nodoc

class HomeSuccess implements HomeState {
  const HomeSuccess(
      {required final List<ServiceModel> featuredServices,
      required final List<PortfolioModel> featuredPortfolios,
      required final List<ReviewModel> reviews})
      : _featuredServices = featuredServices,
        _featuredPortfolios = featuredPortfolios,
        _reviews = reviews;

  final List<ServiceModel> _featuredServices;
  List<ServiceModel> get featuredServices {
    if (_featuredServices is EqualUnmodifiableListView)
      return _featuredServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredServices);
  }

  final List<PortfolioModel> _featuredPortfolios;
  List<PortfolioModel> get featuredPortfolios {
    if (_featuredPortfolios is EqualUnmodifiableListView)
      return _featuredPortfolios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredPortfolios);
  }

  final List<ReviewModel> _reviews;
  List<ReviewModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeSuccessCopyWith<HomeSuccess> get copyWith =>
      _$HomeSuccessCopyWithImpl<HomeSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeSuccess &&
            const DeepCollectionEquality()
                .equals(other._featuredServices, _featuredServices) &&
            const DeepCollectionEquality()
                .equals(other._featuredPortfolios, _featuredPortfolios) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_featuredServices),
      const DeepCollectionEquality().hash(_featuredPortfolios),
      const DeepCollectionEquality().hash(_reviews));

  @override
  String toString() {
    return 'HomeState.success(featuredServices: $featuredServices, featuredPortfolios: $featuredPortfolios, reviews: $reviews)';
  }
}

/// @nodoc
abstract mixin class $HomeSuccessCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $HomeSuccessCopyWith(
          HomeSuccess value, $Res Function(HomeSuccess) _then) =
      _$HomeSuccessCopyWithImpl;
  @useResult
  $Res call(
      {List<ServiceModel> featuredServices,
      List<PortfolioModel> featuredPortfolios,
      List<ReviewModel> reviews});
}

/// @nodoc
class _$HomeSuccessCopyWithImpl<$Res> implements $HomeSuccessCopyWith<$Res> {
  _$HomeSuccessCopyWithImpl(this._self, this._then);

  final HomeSuccess _self;
  final $Res Function(HomeSuccess) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? featuredServices = null,
    Object? featuredPortfolios = null,
    Object? reviews = null,
  }) {
    return _then(HomeSuccess(
      featuredServices: null == featuredServices
          ? _self._featuredServices
          : featuredServices // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
      featuredPortfolios: null == featuredPortfolios
          ? _self._featuredPortfolios
          : featuredPortfolios // ignore: cast_nullable_to_non_nullable
              as List<PortfolioModel>,
      reviews: null == reviews
          ? _self._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
    ));
  }
}

/// @nodoc

class HomeError implements HomeState {
  const HomeError({required this.message});

  final String message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeErrorCopyWith<HomeError> get copyWith =>
      _$HomeErrorCopyWithImpl<HomeError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'HomeState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $HomeErrorCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $HomeErrorCopyWith(HomeError value, $Res Function(HomeError) _then) =
      _$HomeErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$HomeErrorCopyWithImpl<$Res> implements $HomeErrorCopyWith<$Res> {
  _$HomeErrorCopyWithImpl(this._self, this._then);

  final HomeError _self;
  final $Res Function(HomeError) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(HomeError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
