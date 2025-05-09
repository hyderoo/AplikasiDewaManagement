// custom_feature_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_feature_model.freezed.dart';
part 'custom_feature_model.g.dart';

@freezed
abstract class CustomFeatureModel with _$CustomFeatureModel {
  const factory CustomFeatureModel({
    required int id,
    @JsonKey(name: 'order_id') required int orderId,
    @JsonKey(name: 'custom_feature_id') int? customFeatureId,
    @JsonKey(name: 'feature_name') required String featureName,
    required String price,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _CustomFeatureModel;

  factory CustomFeatureModel.fromJson(Map<String, dynamic> json) =>
      _$CustomFeatureModelFromJson(json);
}
