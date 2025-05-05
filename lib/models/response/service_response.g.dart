// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceResponse _$ServiceResponseFromJson(Map<String, dynamic> json) =>
    _ServiceResponse(
      status: json['status'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServiceResponseToJson(_ServiceResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
