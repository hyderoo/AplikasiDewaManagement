import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
abstract class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required int id,
    @JsonKey(name: 'client_name') required String userName,
    @JsonKey(name: 'client_avatar') required String? avatar,
    required double rating,
    @JsonKey(name: 'comment') required String review,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
