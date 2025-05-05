// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PortfolioResponse _$PortfolioResponseFromJson(Map<String, dynamic> json) =>
    _PortfolioResponse(
      status: json['status'] as String,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PortfolioModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PortfolioResponseToJson(_PortfolioResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
