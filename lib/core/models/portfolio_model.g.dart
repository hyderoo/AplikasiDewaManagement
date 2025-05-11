// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PortfolioModel _$PortfolioModelFromJson(Map<String, dynamic> json) =>
    _PortfolioModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      category: json['category'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => PortfolioImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PortfolioModelToJson(_PortfolioModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'category': instance.category,
      'description': instance.description,
      'image': instance.image,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'images': instance.images,
    };

_PortfolioImage _$PortfolioImageFromJson(Map<String, dynamic> json) =>
    _PortfolioImage(
      id: (json['id'] as num).toInt(),
      portfolioId: (json['portfolio_id'] as num).toInt(),
      imagePath: json['image_path'] as String,
      displayOrder: (json['display_order'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$PortfolioImageToJson(_PortfolioImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'portfolio_id': instance.portfolioId,
      'image_path': instance.imagePath,
      'display_order': instance.displayOrder,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'image_url': instance.imageUrl,
    };
