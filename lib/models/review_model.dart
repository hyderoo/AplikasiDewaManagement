import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
abstract class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required int id,
    @JsonKey(name: 'user_name') required String userName,
    required double rating,
    required String review,
    required String date,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
