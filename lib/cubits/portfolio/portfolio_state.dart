part of 'portfolio_cubit.dart';

@freezed
class PortfolioState with _$PortfolioState {
  const factory PortfolioState.initial() = PortfolioInitial;
  const factory PortfolioState.loading() = PortfolioLoading;
  const factory PortfolioState.success({
    required List<PortfolioModel> portfolios,
    String? message,
  }) = PortfolioSuccess;
  const factory PortfolioState.error({
    required String message,
  }) = PortfolioError;
}
