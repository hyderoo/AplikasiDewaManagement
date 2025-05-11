// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_features_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomFeaturesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CustomFeaturesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CustomFeaturesState()';
  }
}

/// @nodoc
class $CustomFeaturesStateCopyWith<$Res> {
  $CustomFeaturesStateCopyWith(
      CustomFeaturesState _, $Res Function(CustomFeaturesState) __);
}

/// @nodoc

class CustomFeaturesInitial implements CustomFeaturesState {
  const CustomFeaturesInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CustomFeaturesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CustomFeaturesState.initial()';
  }
}

/// @nodoc

class CustomFeaturesLoading implements CustomFeaturesState {
  const CustomFeaturesLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CustomFeaturesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CustomFeaturesState.loading()';
  }
}

/// @nodoc

class CustomFeaturesSuccess implements CustomFeaturesState {
  const CustomFeaturesSuccess(
      {required final List<FeatureModel> features,
      required final List<FeatureModel> selectedFeatures,
      required this.totalPrice})
      : _features = features,
        _selectedFeatures = selectedFeatures;

  final List<FeatureModel> _features;
  List<FeatureModel> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  final List<FeatureModel> _selectedFeatures;
  List<FeatureModel> get selectedFeatures {
    if (_selectedFeatures is EqualUnmodifiableListView)
      return _selectedFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedFeatures);
  }

  final double totalPrice;

  /// Create a copy of CustomFeaturesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomFeaturesSuccessCopyWith<CustomFeaturesSuccess> get copyWith =>
      _$CustomFeaturesSuccessCopyWithImpl<CustomFeaturesSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomFeaturesSuccess &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            const DeepCollectionEquality()
                .equals(other._selectedFeatures, _selectedFeatures) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_features),
      const DeepCollectionEquality().hash(_selectedFeatures),
      totalPrice);

  @override
  String toString() {
    return 'CustomFeaturesState.success(features: $features, selectedFeatures: $selectedFeatures, totalPrice: $totalPrice)';
  }
}

/// @nodoc
abstract mixin class $CustomFeaturesSuccessCopyWith<$Res>
    implements $CustomFeaturesStateCopyWith<$Res> {
  factory $CustomFeaturesSuccessCopyWith(CustomFeaturesSuccess value,
          $Res Function(CustomFeaturesSuccess) _then) =
      _$CustomFeaturesSuccessCopyWithImpl;
  @useResult
  $Res call(
      {List<FeatureModel> features,
      List<FeatureModel> selectedFeatures,
      double totalPrice});
}

/// @nodoc
class _$CustomFeaturesSuccessCopyWithImpl<$Res>
    implements $CustomFeaturesSuccessCopyWith<$Res> {
  _$CustomFeaturesSuccessCopyWithImpl(this._self, this._then);

  final CustomFeaturesSuccess _self;
  final $Res Function(CustomFeaturesSuccess) _then;

  /// Create a copy of CustomFeaturesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? features = null,
    Object? selectedFeatures = null,
    Object? totalPrice = null,
  }) {
    return _then(CustomFeaturesSuccess(
      features: null == features
          ? _self._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<FeatureModel>,
      selectedFeatures: null == selectedFeatures
          ? _self._selectedFeatures
          : selectedFeatures // ignore: cast_nullable_to_non_nullable
              as List<FeatureModel>,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class CustomFeaturesError implements CustomFeaturesState {
  const CustomFeaturesError({required this.message});

  final String message;

  /// Create a copy of CustomFeaturesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomFeaturesErrorCopyWith<CustomFeaturesError> get copyWith =>
      _$CustomFeaturesErrorCopyWithImpl<CustomFeaturesError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomFeaturesError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CustomFeaturesState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $CustomFeaturesErrorCopyWith<$Res>
    implements $CustomFeaturesStateCopyWith<$Res> {
  factory $CustomFeaturesErrorCopyWith(
          CustomFeaturesError value, $Res Function(CustomFeaturesError) _then) =
      _$CustomFeaturesErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CustomFeaturesErrorCopyWithImpl<$Res>
    implements $CustomFeaturesErrorCopyWith<$Res> {
  _$CustomFeaturesErrorCopyWithImpl(this._self, this._then);

  final CustomFeaturesError _self;
  final $Res Function(CustomFeaturesError) _then;

  /// Create a copy of CustomFeaturesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(CustomFeaturesError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
