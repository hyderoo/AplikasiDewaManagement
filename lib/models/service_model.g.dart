// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) =>
    _ServiceModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      type: json['type'] as String,
      features: (json['features'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isActive: json['is_active'] as bool,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$ServiceModelToJson(_ServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'type': instance.type,
      'features': instance.features,
      'is_active': instance.isActive,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
