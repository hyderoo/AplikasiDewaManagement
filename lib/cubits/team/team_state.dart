// team_state.dart
part of 'team_cubit.dart';

@freezed
class TeamState with _$TeamState {
  const factory TeamState.initial() = TeamInitial;
  const factory TeamState.loading() = TeamLoading;
  const factory TeamState.success({
    required List<TeamModel> team,
    String? message,
  }) = TeamSuccess;
  const factory TeamState.error({
    required String message,
  }) = TeamError;
}
