import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/core/repositories/content_repository.dart';
import 'package:dewa_wo_app/core/models/review_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'review_state.dart';
part 'review_cubit.freezed.dart';

@lazySingleton
class ReviewCubit extends Cubit<ReviewState> {
  final ContentRepository _contentRepository;

  ReviewCubit({required ContentRepository contentRepository})
      : _contentRepository = contentRepository,
        super(const ReviewState.initial());

  Future<void> getReviews() async {
    emit(const ReviewState.loading());

    final response = await _contentRepository.getReviews();

    if (response.status == 'success' && response.data != null) {
      emit(ReviewState.success(
        reviews: response.data!,
        message: response.message,
      ));
    } else {
      emit(ReviewState.error(
        message: response.message,
      ));
    }
  }

  void resetState() {
    emit(const ReviewState.initial());
  }
}
