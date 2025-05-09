part of 'availability_cubit.dart';

@freezed
class AvailabilityState with _$AvailabilityState {
  const factory AvailabilityState.initial() = AvailabilityInitial;

  const factory AvailabilityState.loading() = AvailabilityLoading;

  const factory AvailabilityState.loaded({
    required List<DateTime> bookedDates,
  }) = AvailabilityLoaded;

  const factory AvailabilityState.availabilityChecked({
    required DateTime date,
    required bool isAvailable,
  }) = AvailabilityChecked;

  const factory AvailabilityState.error({
    required String message,
  }) = AvailabilityError;
}
