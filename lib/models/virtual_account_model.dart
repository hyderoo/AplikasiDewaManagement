// virtual_account_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'virtual_account_model.freezed.dart';
part 'virtual_account_model.g.dart';

@freezed
abstract class VirtualAccountModel with _$VirtualAccountModel {
  const factory VirtualAccountModel({
    required int id,
    required String name,
    @JsonKey(name: 'bank_code') required String bankCode,
    String? logo,
    String? description,
    @JsonKey(name: 'payment_instructions')
    Map<String, dynamic>? paymentInstructions,
  }) = _VirtualAccountModel;

  factory VirtualAccountModel.fromJson(Map<String, dynamic> json) =>
      _$VirtualAccountModelFromJson(json);
}
