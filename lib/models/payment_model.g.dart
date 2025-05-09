// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) =>
    _PaymentModel(
      id: (json['id'] as num).toInt(),
      orderId: (json['order_id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      paymentType: json['payment_type'] as String,
      paymentMethod: json['payment_method'] as String,
      bankCode: json['bank_code'] as String?,
      amount: (json['amount'] as num).toDouble(),
      status: json['status'] as String,
      transactionId: json['transaction_id'] as String?,
      vaNumber: json['va_number'] as String?,
      paymentProof: json['payment_proof'] as String?,
      paymentProofUrl: json['payment_proof_url'] as String?,
      paymentData: json['payment_data'] as String?,
      note: json['note'] as String?,
      expiryTime: json['expiry_time'] as String?,
      verifiedAt: json['verified_at'] as String?,
      rejectedAt: json['rejected_at'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$PaymentModelToJson(_PaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'user_id': instance.userId,
      'payment_type': instance.paymentType,
      'payment_method': instance.paymentMethod,
      'bank_code': instance.bankCode,
      'amount': instance.amount,
      'status': instance.status,
      'transaction_id': instance.transactionId,
      'va_number': instance.vaNumber,
      'payment_proof': instance.paymentProof,
      'payment_proof_url': instance.paymentProofUrl,
      'payment_data': instance.paymentData,
      'note': instance.note,
      'expiry_time': instance.expiryTime,
      'verified_at': instance.verifiedAt,
      'rejected_at': instance.rejectedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
