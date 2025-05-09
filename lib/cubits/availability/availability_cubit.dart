import 'package:bloc/bloc.dart';
import 'package:dewa_wo_app/data/repositories/availability_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'availability_state.dart';
part 'availability_cubit.freezed.dart';

@lazySingleton
class AvailabilityCubit extends Cubit<AvailabilityState> {
  final AvailabilityRepository _availabilityRepository;

  AvailabilityCubit({required AvailabilityRepository availabilityRepository})
      : _availabilityRepository = availabilityRepository,
        super(const AvailabilityState.initial());

  /// Fetch all booked dates
  Future<void> getBookedDates() async {
    emit(const AvailabilityState.loading());

    try {
      final bookedDates = await _availabilityRepository.getBookedDates();
      emit(AvailabilityState.loaded(bookedDates: bookedDates));
    } catch (e) {
      emit(AvailabilityState.error(message: e.toString()));
    }
  }

  /// Fetch monthly availability
  Future<void> getMonthlyAvailability(int year, int month) async {
    emit(const AvailabilityState.loading());

    try {
      final bookedDates =
          await _availabilityRepository.getMonthlyAvailability(year, month);
      emit(AvailabilityState.loaded(bookedDates: bookedDates));
    } catch (e) {
      emit(AvailabilityState.error(message: e.toString()));
    }
  }

  /// Check specific date availability
  Future<void> checkDateAvailability(DateTime date) async {
    emit(const AvailabilityState.loading());

    try {
      final isAvailable =
          await _availabilityRepository.checkDateAvailability(date);
      emit(AvailabilityState.availabilityChecked(
        date: date,
        isAvailable: isAvailable,
      ));
    } catch (e) {
      emit(AvailabilityState.error(message: e.toString()));
    }
  }

  void resetState() {
    emit(const AvailabilityState.initial());
  }
}
