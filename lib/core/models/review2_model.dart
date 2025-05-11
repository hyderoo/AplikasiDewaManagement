// review_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review2_model.freezed.dart';
part 'review2_model.g.dart';

@freezed
abstract class Review2Model with _$Review2Model {
  const factory Review2Model({
    required int id,
    @JsonKey(name: 'order_id') required int orderId,
    @JsonKey(name: 'user_id') required int userId,
    required int rating,
    String? comment,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Review2Model;

  factory Review2Model.fromJson(Map<String, dynamic> json) =>
      _$Review2ModelFromJson(json);
}
