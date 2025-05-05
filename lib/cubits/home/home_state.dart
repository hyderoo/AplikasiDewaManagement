part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.success({
    required List<ServiceModel> featuredServices,
    required List<PortfolioModel> featuredPortfolios,
    required List<ReviewModel> reviews,
  }) = HomeSuccess;
  const factory HomeState.error({
    required String message,
  }) = HomeError;
}
