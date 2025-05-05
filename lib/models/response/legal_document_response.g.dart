// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legal_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LegalDocumentResponse _$LegalDocumentResponseFromJson(
        Map<String, dynamic> json) =>
    _LegalDocumentResponse(
      status: json['status'] as String,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : LegalDocumentModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LegalDocumentResponseToJson(
        _LegalDocumentResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
