part of 'service_cubit.dart';

@freezed
class ServiceState with _$ServiceState {
  const factory ServiceState.initial() = ServiceInitial;
  const factory ServiceState.loading() = ServiceLoading;
  const factory ServiceState.success({
    required List<CatalogModel> services,
    String? message,
  }) = ServiceSuccess;
  const factory ServiceState.error({
    required String message,
  }) = ServiceError;
}
