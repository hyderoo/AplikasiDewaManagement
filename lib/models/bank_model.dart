// bank_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_model.freezed.dart';
part 'bank_model.g.dart';

@freezed
abstract class BankModel with _$BankModel {
  const factory BankModel({
    required int id,
    required String name,
    required String code,
    @JsonKey(name: 'account_number') required String accountNumber,
    @JsonKey(name: 'account_name') required String accountName,
    String? logo,
  }) = _BankModel;

  factory BankModel.fromJson(Map<String, dynamic> json) =>
      _$BankModelFromJson(json);
}
