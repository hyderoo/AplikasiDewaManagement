// team_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/data/repositories/content_repository.dart';
import 'package:dewa_wo_app/models/team_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'team_state.dart';
part 'team_cubit.freezed.dart';

@lazySingleton
class TeamCubit extends Cubit<TeamState> {
  final ContentRepository _contentRepository;

  TeamCubit({required ContentRepository contentRepository})
      : _contentRepository = contentRepository,
        super(const TeamState.initial());

  Future<void> getTeam() async {
    emit(const TeamState.loading());

    final response = await _contentRepository.getTeam();

    if (response.status == 'success' && response.data != null) {
      emit(TeamState.success(
        team: response.data!,
        message: response.message,
      ));
    } else {
      emit(TeamState.error(
        message: response.message,
      ));
    }
  }

  void resetState() {
    emit(const TeamState.initial());
  }
}
