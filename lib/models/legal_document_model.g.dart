// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legal_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LegalDocumentModel _$LegalDocumentModelFromJson(Map<String, dynamic> json) =>
    _LegalDocumentModel(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      content: json['content'] as String,
      version: json['version'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$LegalDocumentModelToJson(_LegalDocumentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'content': instance.content,
      'version': instance.version,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
