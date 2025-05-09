// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'virtual_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VirtualAccountModel _$VirtualAccountModelFromJson(Map<String, dynamic> json) =>
    _VirtualAccountModel(
      id: (json['id'] as num).toInt(),
      bankCode: json['bank_code'] as String,
      name: json['name'] as String,
      accountNumber: json['account_number'] as String?,
      isActive: json['is_active'] as bool,
      description: json['description'] as String?,
      logo: json['logo'] as String?,
      paymentInstructions: (json['payment_instructions'] as List<dynamic>)
          .map((e) => PaymentInstruction.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$VirtualAccountModelToJson(
        _VirtualAccountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bank_code': instance.bankCode,
      'name': instance.name,
      'account_number': instance.accountNumber,
      'is_active': instance.isActive,
      'description': instance.description,
      'logo': instance.logo,
      'payment_instructions': instance.paymentInstructions,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_PaymentInstruction _$PaymentInstructionFromJson(Map<String, dynamic> json) =>
    _PaymentInstruction(
      step: json['step'] as String,
      instruction: json['instruction'] as String,
    );

Map<String, dynamic> _$PaymentInstructionToJson(_PaymentInstruction instance) =>
    <String, dynamic>{
      'step': instance.step,
      'instruction': instance.instruction,
    };
