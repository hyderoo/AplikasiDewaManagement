// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeamResponse _$TeamResponseFromJson(Map<String, dynamic> json) =>
    _TeamResponse(
      status: json['status'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TeamModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TeamResponseToJson(_TeamResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
