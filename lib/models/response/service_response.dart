import 'package:dewa_wo_app/models/service_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_response.freezed.dart';
part 'service_response.g.dart';

@freezed
abstract class ServiceResponse with _$ServiceResponse {
  const factory ServiceResponse({
    required String status,
    required String message,
    List<ServiceModel>? data,
  }) = _ServiceResponse;

  factory ServiceResponse.fromJson(Map<String, dynamic> json) =>
      _$ServiceResponseFromJson(json);
}
