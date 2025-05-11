// payment_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
abstract class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    required int id,
    @JsonKey(name: 'order_id') required int orderId,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'payment_type') required String paymentType,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    @JsonKey(name: 'bank_code') String? bankCode,
    required String amount,
    required String status,
    @JsonKey(name: 'transaction_id') String? transactionId,
    @JsonKey(name: 'va_number') String? vaNumber,
    @JsonKey(name: 'payment_proof') String? paymentProof,
    @JsonKey(name: 'payment_proof_url') String? paymentProofUrl,
    @JsonKey(name: 'payment_data') String? paymentData,
    String? note,
    @JsonKey(name: 'expiry_time') String? expiryTime,
    @JsonKey(name: 'verified_at') String? verifiedAt,
    @JsonKey(name: 'rejected_at') String? rejectedAt,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}
