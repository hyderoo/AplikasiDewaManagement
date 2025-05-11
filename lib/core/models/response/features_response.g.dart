// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'features_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeaturesResponse _$FeaturesResponseFromJson(Map<String, dynamic> json) =>
    _FeaturesResponse(
      status: json['status'] as String,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : FeaturesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeaturesResponseToJson(_FeaturesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_FeaturesData _$FeaturesDataFromJson(Map<String, dynamic> json) =>
    _FeaturesData(
      features: (json['features'] as List<dynamic>)
          .map((e) => FeatureModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeaturesDataToJson(_FeaturesData instance) =>
    <String, dynamic>{
      'features': instance.features,
    };

_FeatureModel _$FeatureModelFromJson(Map<String, dynamic> json) =>
    _FeatureModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'] as String,
      description: json['description'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$FeatureModelToJson(_FeatureModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
