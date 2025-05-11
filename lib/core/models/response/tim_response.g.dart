// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tim_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TimResponse _$TimResponseFromJson(Map<String, dynamic> json) => _TimResponse(
      status: json['status'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TimModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TimResponseToJson(_TimResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_TimModel _$TimModelFromJson(Map<String, dynamic> json) => _TimModel(
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

Map<String, dynamic> _$TimModelToJson(_TimModel instance) => <String, dynamic>{
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
