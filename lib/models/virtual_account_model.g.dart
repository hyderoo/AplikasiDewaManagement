// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'virtual_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VirtualAccountModel _$VirtualAccountModelFromJson(Map<String, dynamic> json) =>
    _VirtualAccountModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      bankCode: json['bank_code'] as String,
      logo: json['logo'] as String?,
      description: json['description'] as String?,
      paymentInstructions:
          json['payment_instructions'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$VirtualAccountModelToJson(
        _VirtualAccountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bank_code': instance.bankCode,
      'logo': instance.logo,
      'description': instance.description,
      'payment_instructions': instance.paymentInstructions,
    };
