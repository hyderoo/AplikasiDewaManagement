// payment_details_response.dart
import 'package:dewa_wo_app/core/models/payment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_details_response.freezed.dart';
part 'payment_details_response.g.dart';

@freezed
abstract class PaymentDetailsResponse with _$PaymentDetailsResponse {
  const factory PaymentDetailsResponse({
    required String status,
    required String message,
    PaymentModel? data,
  }) = _PaymentDetailsResponse;

  factory PaymentDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsResponseFromJson(json);
}
