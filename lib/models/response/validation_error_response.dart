import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_error_response.freezed.dart';
part 'validation_error_response.g.dart';

@freezed
abstract class ValidationErrorResponse with _$ValidationErrorResponse {
  const factory ValidationErrorResponse({
    required String status,
    required String message,
    required Map<String, List<String>> errors,
  }) = _ValidationErrorResponse;

  factory ValidationErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorResponseFromJson(json);
}
