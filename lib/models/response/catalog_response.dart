import 'package:dewa_wo_app/models/catalog_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_response.freezed.dart';
part 'catalog_response.g.dart';

@freezed
abstract class CatalogResponse with _$CatalogResponse {
  const factory CatalogResponse({
    required String status,
    required String message,
    List<CatalogModel>? data,
  }) = _CatalogResponse;

  factory CatalogResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogResponseFromJson(json);
}
