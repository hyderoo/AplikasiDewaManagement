import 'package:freezed_annotation/freezed_annotation.dart';

part 'tim_response.freezed.dart';
part 'tim_response.g.dart';

@freezed
abstract class TimResponse with _$TimResponse {
  const factory TimResponse({
    required String status,
    required String message,
    List<TimModel>? data,
  }) = _TimResponse;

  factory TimResponse.fromJson(Map<String, dynamic> json) =>
      _$TimResponseFromJson(json);
}

@freezed
abstract class TimModel with _$TimModel {
  const factory TimModel({
    required int id,
    required String name,
    required String role,
    required String description,
    required String image,
    required String? instagram,
    required String? linkedin,
    @JsonKey(name: 'is_highlighted') required bool isHighlighted,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = _TimModel;

  factory TimModel.fromJson(Map<String, dynamic> json) =>
      _$TimModelFromJson(json);
}
