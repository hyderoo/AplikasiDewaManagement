// team_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/core/models/response/tim_response.dart';
import 'package:dewa_wo_app/core/repositories/content_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tim_state.dart';
part 'tim_cubit.freezed.dart';

@lazySingleton
class TimCubit extends Cubit<TimState> {
  final ContentRepository _contentRepository;

  TimCubit({required ContentRepository contentRepository})
      : _contentRepository = contentRepository,
        super(const TimState.initial());

  Future<void> fetchData() async {
    emit(const TimState.loading());

    final response = await _contentRepository.getTim();

    if (response.status == 'success' && response.data != null) {
      emit(TimState.success(
        tim: response.data!,
        message: response.message,
      ));
    } else {
      emit(TimState.error(
        message: response.message,
      ));
    }
  }

  void resetState() {
    emit(const TimState.initial());
  }
}
