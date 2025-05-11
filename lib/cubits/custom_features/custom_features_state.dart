// lib/core/cubits/custom_features/custom_features_state.dart
part of 'custom_features_cubit.dart';

@freezed
class CustomFeaturesState with _$CustomFeaturesState {
  const factory CustomFeaturesState.initial() = CustomFeaturesInitial;
  const factory CustomFeaturesState.loading() = CustomFeaturesLoading;
  const factory CustomFeaturesState.success({
    required List<FeatureModel> features,
    required List<FeatureModel> selectedFeatures,
    required double totalPrice,
  }) = CustomFeaturesSuccess;
  const factory CustomFeaturesState.error({
    required String message,
  }) = CustomFeaturesError;
}
