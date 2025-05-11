import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/core/repositories/content_repository.dart';
import 'package:dewa_wo_app/core/models/portfolio_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'portfolio_state.dart';
part 'portfolio_cubit.freezed.dart';

@lazySingleton
class PortfolioCubit extends Cubit<PortfolioState> {
  final ContentRepository _contentRepository;

  PortfolioCubit({required ContentRepository contentRepository})
      : _contentRepository = contentRepository,
        super(const PortfolioState.initial());

  Future<void> getPortfolios() async {
    emit(const PortfolioState.loading());

    final response = await _contentRepository.getPortfolios();

    if (response.status == 'success' && response.data != null) {
      emit(PortfolioState.success(
        portfolios: response.data!,
        message: response.message,
      ));
    } else {
      emit(PortfolioState.error(
        message: response.message,
      ));
    }
  }

  void resetState() {
    emit(const PortfolioState.initial());
  }
}
