import 'package:freezed_annotation/freezed_annotation.dart';

part 'features_response.freezed.dart';
part 'features_response.g.dart';

@freezed
abstract class FeaturesResponse with _$FeaturesResponse {
  const factory FeaturesResponse({
    required String status,
    required String message,
    FeaturesData? data,
  }) = _FeaturesResponse;

  factory FeaturesResponse.fromJson(Map<String, dynamic> json) =>
      _$FeaturesResponseFromJson(json);
}

@freezed
abstract class FeaturesData with _$FeaturesData {
  const factory FeaturesData({
    required List<FeatureModel> features,
  }) = _FeaturesData;

  factory FeaturesData.fromJson(Map<String, dynamic> json) =>
      _$FeaturesDataFromJson(json);
}

@freezed
abstract class FeatureModel with _$FeatureModel {
  const factory FeatureModel({
    required int id,
    required String name,
    required String price,
    required String description,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _FeatureModel;

  factory FeatureModel.fromJson(Map<String, dynamic> json) =>
      _$FeatureModelFromJson(json);
}
