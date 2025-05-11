// lib/core/cubits/custom_features/custom_features_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/core/models/response/features_response.dart';
import 'package:dewa_wo_app/core/repositories/content_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'custom_features_state.dart';
part 'custom_features_cubit.freezed.dart';

@injectable
class CustomFeaturesCubit extends Cubit<CustomFeaturesState> {
  final ContentRepository _contentRepository;

  CustomFeaturesCubit({required ContentRepository contentRepository})
      : _contentRepository = contentRepository,
        super(const CustomFeaturesState.initial());

  Future<void> loadCustomFeatures() async {
    emit(const CustomFeaturesState.loading());

    try {
      final response = await _contentRepository.getCustomFeatures();

      if (response.status == 'success' && response.data != null) {
        emit(CustomFeaturesState.success(
          features: response.data!.features,
          selectedFeatures: [],
          totalPrice: 0,
        ));
      } else {
        emit(CustomFeaturesState.error(
          message: response.message,
        ));
      }
    } catch (e) {
      emit(CustomFeaturesState.error(
        message: 'Terjadi kesalahan: ${e.toString()}',
      ));
    }
  }

  void toggleFeature(FeatureModel feature) {
    if (state is! CustomFeaturesSuccess) return;

    final currentState = state as CustomFeaturesSuccess;
    List<FeatureModel> updatedSelection = [...currentState.selectedFeatures];

    // Check if feature is already selected
    final featureIndex = updatedSelection.indexWhere((f) => f.id == feature.id);

    if (featureIndex != -1) {
      // Remove if already selected
      updatedSelection.removeAt(featureIndex);
    } else {
      // Add if not selected
      updatedSelection.add(feature);
    }

    // Calculate total price
    double totalPrice = 0;
    for (var feature in updatedSelection) {
      totalPrice += double.parse(feature.price);
    }

    emit(CustomFeaturesState.success(
      features: currentState.features,
      selectedFeatures: updatedSelection,
      totalPrice: totalPrice,
    ));
  }

  bool isFeatureSelected(int featureId) {
    if (state is! CustomFeaturesSuccess) return false;

    final currentState = state as CustomFeaturesSuccess;
    return currentState.selectedFeatures.any((f) => f.id == featureId);
  }

  void clearSelection() {
    if (state is! CustomFeaturesSuccess) return;

    final currentState = state as CustomFeaturesSuccess;
    emit(CustomFeaturesState.success(
      features: currentState.features,
      selectedFeatures: [],
      totalPrice: 0,
    ));
  }
}
