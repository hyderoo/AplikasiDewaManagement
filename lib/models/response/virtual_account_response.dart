// virtual_account_response.dart
import 'package:dewa_wo_app/models/virtual_account_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'virtual_account_response.freezed.dart';
part 'virtual_account_response.g.dart';

@freezed
abstract class VirtualAccountResponse with _$VirtualAccountResponse {
  const factory VirtualAccountResponse({
    required String status,
    required String message,
    List<VirtualAccountModel>? data,
  }) = _VirtualAccountResponse;

  factory VirtualAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$VirtualAccountResponseFromJson(json);
}
