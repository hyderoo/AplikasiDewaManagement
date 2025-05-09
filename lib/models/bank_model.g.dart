// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankModel _$BankModelFromJson(Map<String, dynamic> json) => _BankModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
      accountNumber: json['account_number'] as String?,
      accountName: json['account_name'] as String?,
      branch: json['branch'] as String?,
      logo: json['logo'] as String?,
      isActive: json['is_active'] as bool,
      description: json['description'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$BankModelToJson(_BankModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'account_number': instance.accountNumber,
      'account_name': instance.accountName,
      'branch': instance.branch,
      'logo': instance.logo,
      'is_active': instance.isActive,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
