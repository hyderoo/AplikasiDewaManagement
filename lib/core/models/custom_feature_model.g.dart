// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_feature_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomFeatureModel _$CustomFeatureModelFromJson(Map<String, dynamic> json) =>
    _CustomFeatureModel(
      id: (json['id'] as num).toInt(),
      orderId: (json['order_id'] as num).toInt(),
      customFeatureId: (json['custom_feature_id'] as num?)?.toInt(),
      featureName: json['feature_name'] as String,
      price: json['price'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$CustomFeatureModelToJson(_CustomFeatureModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'custom_feature_id': instance.customFeatureId,
      'feature_name': instance.featureName,
      'price': instance.price,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
