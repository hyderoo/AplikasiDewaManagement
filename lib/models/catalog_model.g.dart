// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogModel _$CatalogModelFromJson(Map<String, dynamic> json) =>
    _CatalogModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      type: json['type'] as String,
      image: json['image'] as String,
      features:
          (json['features'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      imageUrl: json['image_url'] as String?,
      formattedPrice: json['formatted_price'] as String,
    );

Map<String, dynamic> _$CatalogModelToJson(_CatalogModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'type': instance.type,
      'image': instance.image,
      'features': instance.features,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'image_url': instance.imageUrl,
      'formatted_price': instance.formattedPrice,
    };
