import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/data/repositories/content_repository.dart';
import 'package:dewa_wo_app/models/portfolio_model.dart';
import 'package:dewa_wo_app/models/response/portfolio_response.dart';
import 'package:dewa_wo_app/models/response/review_response.dart';
import 'package:dewa_wo_app/models/response/service_response.dart';
import 'package:dewa_wo_app/models/review_model.dart';
import 'package:dewa_wo_app/models/service_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final ContentRepository _contentRepository;

  HomeCubit({required ContentRepository contentRepository})
      : _contentRepository = contentRepository,
        super(const HomeState.initial());

  Future<void> loadHomeData() async {
    emit(const HomeState.loading());

    try {
      // Fetch all data in parallel
      final servicesResponse = _contentRepository.getServices();
      final portfoliosResponse = _contentRepository.getPortfolios();
      final reviewsResponse = _contentRepository.getReviews();

      // Wait for all responses
      final results = await Future.wait([
        servicesResponse,
        portfoliosResponse,
        reviewsResponse,
      ]);

      final resultServices = results[0] as ServiceResponse;
      final resultPortfolios = results[1] as PortfolioResponse;
      final resultReviews = results[2] as ReviewResponse;

      final services = resultServices.status == 'success'
          ? resultServices.data ?? []
          : <ServiceModel>[];
      final portfolios = resultPortfolios.status == 'success'
          ? resultPortfolios.data ?? []
          : <PortfolioModel>[];
      final reviews = resultReviews.status == 'success'
          ? resultReviews.data ?? []
          : <ReviewModel>[];

      // Take only the first few items for the home page
      final featuredServices = services.take(3).toList();
      final featuredPortfolios = portfolios.take(3).toList();

      emit(HomeState.success(
        featuredServices: featuredServices,
        featuredPortfolios: featuredPortfolios,
        reviews: reviews,
      ));
    } catch (e) {
      emit(HomeState.error(message: e.toString()));
    }
  }

  void resetState() {
    emit(const HomeState.initial());
  }
}
