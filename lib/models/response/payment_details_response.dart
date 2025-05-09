// payment_details_response.dart
import 'package:dewa_wo_app/models/order_model.dart';
import 'package:dewa_wo_app/models/bank_model.dart';
import 'package:dewa_wo_app/models/virtual_account_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_details_response.freezed.dart';
part 'payment_details_response.g.dart';

@freezed
abstract class PaymentDetailsResponse with _$PaymentDetailsResponse {
  const factory PaymentDetailsResponse({
    required String status,
    required String message,
    PaymentDetailsData? data,
  }) = _PaymentDetailsResponse;

  factory PaymentDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsResponseFromJson(json);
}

@freezed
abstract class PaymentDetailsData with _$PaymentDetailsData {
  const factory PaymentDetailsData({
    required OrderModel order,
    required List<BankModel> banks,
    @JsonKey(name: 'virtual_accounts')
    required List<VirtualAccountModel> virtualAccounts,
  }) = _PaymentDetailsData;

  factory PaymentDetailsData.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsDataFromJson(json);
}
