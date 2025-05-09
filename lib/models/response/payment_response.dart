// payment_response.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_response.freezed.dart';
part 'payment_response.g.dart';

@freezed
abstract class PaymentResponse with _$PaymentResponse {
  const factory PaymentResponse({
    required String status,
    required String message,
    dynamic data,
  }) = _PaymentResponse;

  factory PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseFromJson(json);
}
