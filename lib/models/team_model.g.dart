// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeamModel _$TeamModelFromJson(Map<String, dynamic> json) => _TeamModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      role: json['role'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      instagram: json['instagram'] as String?,
      linkedin: json['linkedin'] as String?,
      isHighlighted: json['is_highlighted'] as bool,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$TeamModelToJson(_TeamModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'description': instance.description,
      'image': instance.image,
      'instagram': instance.instagram,
      'linkedin': instance.linkedin,
      'is_highlighted': instance.isHighlighted,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'image_url': instance.imageUrl,
    };
