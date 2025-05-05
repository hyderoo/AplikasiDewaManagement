import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

@freezed
abstract class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    required int id,
    required String title,
    required String description,
    required String icon,
    required String type,
    @Default([]) List<String> features,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
