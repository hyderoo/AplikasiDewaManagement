import 'package:dewa_wo_app/models/team_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_response.freezed.dart';
part 'team_response.g.dart';

@freezed
abstract class TeamResponse with _$TeamResponse {
  const factory TeamResponse({
    required String status,
    required String message,
    List<TeamModel>? data,
  }) = _TeamResponse;

  factory TeamResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamResponseFromJson(json);
}
