part of 'review_cubit.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState.initial() = ReviewInitial;
  const factory ReviewState.loading() = ReviewLoading;
  const factory ReviewState.success({
    required List<ReviewModel> reviews,
    String? message,
  }) = ReviewSuccess;
  const factory ReviewState.error({
    required String message,
  }) = ReviewError;
}
