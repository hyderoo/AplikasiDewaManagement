import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/data/repositories/content_repository.dart';
import 'package:dewa_wo_app/models/catalog_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'service_state.dart';
part 'service_cubit.freezed.dart';

@lazySingleton
class ServiceCubit extends Cubit<ServiceState> {
  final ContentRepository _contentRepository;

  ServiceCubit({required ContentRepository contentRepository})
      : _contentRepository = contentRepository,
        super(const ServiceState.initial());

  Future<void> getServices() async {
    emit(const ServiceState.loading());

    final response = await _contentRepository.getCatalogs();

    if (response.status == 'success' && response.data != null) {
      emit(ServiceState.success(
        services: response.data!,
        message: response.message,
      ));
    } else {
      emit(ServiceState.error(
        message: response.message,
      ));
    }
  }

  void resetState() {
    emit(const ServiceState.initial());
  }
}
