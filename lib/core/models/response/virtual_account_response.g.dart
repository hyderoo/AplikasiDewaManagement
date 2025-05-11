// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'virtual_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VirtualAccountResponse _$VirtualAccountResponseFromJson(
        Map<String, dynamic> json) =>
    _VirtualAccountResponse(
      status: json['status'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => VirtualAccountModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VirtualAccountResponseToJson(
        _VirtualAccountResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
