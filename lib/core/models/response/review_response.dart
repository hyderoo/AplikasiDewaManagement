import 'package:dewa_wo_app/core/models/review_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_response.freezed.dart';
part 'review_response.g.dart';

@freezed
abstract class ReviewResponse with _$ReviewResponse {
  const factory ReviewResponse({
    required String status,
    required String message,
    List<ReviewModel>? data,
  }) = _ReviewResponse;

  factory ReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseFromJson(json);
}
