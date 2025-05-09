// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankModel _$BankModelFromJson(Map<String, dynamic> json) => _BankModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
      accountNumber: json['account_number'] as String,
      accountName: json['account_name'] as String,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$BankModelToJson(_BankModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'account_number': instance.accountNumber,
      'account_name': instance.accountName,
      'logo': instance.logo,
    };
