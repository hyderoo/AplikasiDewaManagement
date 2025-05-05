import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_model.freezed.dart';
part 'portfolio_model.g.dart';

@freezed
abstract class PortfolioModel with _$PortfolioModel {
  const factory PortfolioModel({
    required int id,
    required String title,
    required String category,
    required String description,
    required String image,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required List<PortfolioImage> images,
  }) = _PortfolioModel;

  factory PortfolioModel.fromJson(Map<String, dynamic> json) =>
      _$PortfolioModelFromJson(json);
}

@freezed
abstract class PortfolioImage with _$PortfolioImage {
  const factory PortfolioImage({
    required int id,
    @JsonKey(name: 'portfolio_id') required int portfolioId,
    @JsonKey(name: 'image_path') required String imagePath,
    @JsonKey(name: 'display_order') required int displayOrder,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _PortfolioImage;

  factory PortfolioImage.fromJson(Map<String, dynamic> json) =>
      _$PortfolioImageFromJson(json);
}
