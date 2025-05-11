import 'package:dewa_wo_app/core/api/api_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@lazySingleton
class AvailabilityRepository {
  final ApiClient _apiClient;

  AvailabilityRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  /// Fetch all booked dates from the API
  Future<List<DateTime>> getBookedDates() async {
    try {
      final response = await _apiClient.get('/booked-dates');

      if (response.statusCode == 200) {
        final List<String> bookedDatesStr =
            List<String>.from(response.data['bookedDates']);

        // Convert string dates to DateTime objects
        return bookedDatesStr
            .map((dateStr) => DateFormat('yyyy-MM-dd').parse(dateStr))
            .toList();
      } else {
        throw Exception('Failed to fetch booked dates');
      }
    } on DioException catch (e) {
      throw Exception('Network error: ${e.message}');
    } catch (e) {
      throw Exception('Error fetching booked dates: ${e.toString()}');
    }
  }

  /// Fetch availability for a specific month
  Future<List<DateTime>> getMonthlyAvailability(int year, int month) async {
    try {
      final response =
          await _apiClient.get('/monthly-availability/$year/$month');

      if (response.statusCode == 200) {
        final List<String> bookedDatesStr =
            List<String>.from(response.data['bookedDates']);

        // Convert string dates to DateTime objects
        return bookedDatesStr
            .map((dateStr) => DateFormat('yyyy-MM-dd').parse(dateStr))
            .toList();
      } else {
        throw Exception('Failed to fetch monthly availability');
      }
    } on DioException catch (e) {
      throw Exception('Network error: ${e.message}');
    } catch (e) {
      throw Exception('Error fetching monthly availability: ${e.toString()}');
    }
  }

  /// Check availability for a specific date
  Future<bool> checkDateAvailability(DateTime date) async {
    final formattedDate = DateFormat('yyyy-MM-dd').format(date);

    try {
      final response =
          await _apiClient.get('/check-date-availability/$formattedDate');

      if (response.statusCode == 200) {
        return response.data['available'] ?? false;
      } else {
        throw Exception('Failed to check date availability');
      }
    } on DioException catch (e) {
      throw Exception('Network error: ${e.message}');
    } catch (e) {
      throw Exception('Error checking date availability: ${e.toString()}');
    }
  }
}
