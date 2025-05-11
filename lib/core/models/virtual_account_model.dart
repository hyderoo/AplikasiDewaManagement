// virtual_account_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'virtual_account_model.freezed.dart';
part 'virtual_account_model.g.dart';

@freezed
abstract class VirtualAccountModel with _$VirtualAccountModel {
  const factory VirtualAccountModel({
    required int id,
    @JsonKey(name: 'bank_code') required String bankCode,
    required String name,
    @JsonKey(name: 'account_number') String? accountNumber,
    @JsonKey(name: 'is_active') required bool isActive,
    String? description,
    String? logo,
    @JsonKey(name: 'payment_instructions')
    required List<PaymentInstruction> paymentInstructions,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _VirtualAccountModel;

  factory VirtualAccountModel.fromJson(Map<String, dynamic> json) =>
      _$VirtualAccountModelFromJson(json);
}

@freezed
abstract class PaymentInstruction with _$PaymentInstruction {
  const factory PaymentInstruction({
    required String step,
    required String instruction,
  }) = _PaymentInstruction;

  factory PaymentInstruction.fromJson(Map<String, dynamic> json) =>
      _$PaymentInstructionFromJson(json);
}
