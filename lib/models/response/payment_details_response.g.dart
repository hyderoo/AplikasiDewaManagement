// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentDetailsResponse _$PaymentDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _PaymentDetailsResponse(
      status: json['status'] as String,
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : PaymentModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentDetailsResponseToJson(
        _PaymentDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
