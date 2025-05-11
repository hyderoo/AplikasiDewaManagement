import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_model.freezed.dart';
part 'catalog_model.g.dart';

final List<Map<String, String>> serviceTypes = [
  {"value": "semua", "label": "Semua"},
  {"value": "all-in-one", "label": "Paket Lengkap"},
  {"value": "decoration", "label": "Dekorasi"},
  {"value": "documentation", "label": "Dokumentasi"},
];

@freezed
abstract class CatalogModel with _$CatalogModel {
  const factory CatalogModel({
    required int id,
    required String name,
    required String description,
    required List<int> price,
    required String type,
    required String image,
    @Default([]) List<String> features,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'image_url') required String? imageUrl,
    @JsonKey(name: 'formatted_price') required String formattedPrice,
  }) = _CatalogModel;

  factory CatalogModel.fromJson(Map<String, dynamic> json) =>
      _$CatalogModelFromJson(json);
}
