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
          : PaymentDetailsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentDetailsResponseToJson(
        _PaymentDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_PaymentDetailsData _$PaymentDetailsDataFromJson(Map<String, dynamic> json) =>
    _PaymentDetailsData(
      order: OrderModel.fromJson(json['order'] as Map<String, dynamic>),
      banks: (json['banks'] as List<dynamic>)
          .map((e) => BankModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      virtualAccounts: (json['virtual_accounts'] as List<dynamic>)
          .map((e) => VirtualAccountModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaymentDetailsDataToJson(_PaymentDetailsData instance) =>
    <String, dynamic>{
      'order': instance.order,
      'banks': instance.banks,
      'virtual_accounts': instance.virtualAccounts,
    };
