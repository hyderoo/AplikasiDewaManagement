import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_model.freezed.dart';
part 'team_model.g.dart';

@freezed
abstract class TeamModel with _$TeamModel {
  const factory TeamModel({
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
  }) = _TeamModel;

  factory TeamModel.fromJson(Map<String, dynamic> json) =>
      _$TeamModelFromJson(json);
}
