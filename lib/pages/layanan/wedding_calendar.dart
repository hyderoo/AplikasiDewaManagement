import 'package:dewa_wo_app/core/api/api_client.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class WeddingCalendar extends StatefulWidget {
  final Function(DateTime)? onDateSelected;
  final bool showSelectedDateDetails;

  const WeddingCalendar({
    super.key,
    this.onDateSelected,
    this.showSelectedDateDetails = true,
  });

  @override
  State<WeddingCalendar> createState() => _WeddingCalendarState();
}

class _WeddingCalendarState extends State<WeddingCalendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.month;

  // State untuk tanggal-tanggal yang sudah dipesan
  List<DateTime> _bookedDates = [];
  bool _isLoading = true;
  String? _error;

  final ApiClient _apiClient = ApiClient();

  @override
  void initState() {
    super.initState();
    _fetchBookedDates();
  }

  // Ambil tanggal yang sudah dipesan dari API
  Future<void> _fetchBookedDates() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final response = await _apiClient.get('/booked-dates');

      if (response.statusCode == 200) {
        final List<String> bookedDatesStr =
            List<String>.from(response.data['bookedDates']);

        // Konversi string tanggal menjadi objek DateTime
        setState(() {
          _bookedDates = bookedDatesStr
              .map((dateStr) => DateFormat('yyyy-MM-dd').parse(dateStr))
              .toList();
          _isLoading = false;
        });
      } else {
        setState(() {
          _error = 'Gagal memuat data jadwal';
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _error = 'Terjadi kesalahan: ${e.toString()}';
        _isLoading = false;
      });
    }
  }

  // Ambil ketersediaan bulanan
  Future<void> _fetchMonthlyAvailability(int year, int month) async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final response =
          await _apiClient.get('/monthly-availability/$year/$month');

      if (response.statusCode == 200) {
        final List<String> bookedDatesStr =
            List<String>.from(response.data['bookedDates']);

        setState(() {
          _bookedDates = bookedDatesStr
              .map((dateStr) => DateFormat('yyyy-MM-dd').parse(dateStr))
              .toList();
          _isLoading = false;
        });
      } else {
        setState(() {
          _error = 'Gagal memuat data jadwal bulanan';
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _error = 'Terjadi kesalahan: ${e.toString()}';
        _isLoading = false;
      });
    }
  }

  // Cek apakah tanggal sudah dipesan
  bool _isDateBooked(DateTime date) {
    return _bookedDates.any((bookedDate) => isSameDay(bookedDate, date));
  }

  // Cek apakah tanggal sudah berlalu
  bool _isPastDate(DateTime date) {
    final today = DateTime.now();
    return date.isBefore(DateTime(today.year, today.month, today.day));
  }

  // Event builder untuk menandai tanggal yang sudah dipesan
  List<dynamic> _getEventsForDay(DateTime day) {
    return _isDateBooked(day) ? ['booked'] : [];
  }

  // Style untuk cell kalender
  BoxDecoration? _calendarBuilders(DateTime date, bool isSelected) {
    if (_isDateBooked(date)) {
      return BoxDecoration(
        color: Colors.red[100],
        shape: BoxShape.circle,
      );
    } else if (_isPastDate(date)) {
      return BoxDecoration(
        color: Colors.grey[100],
        shape: BoxShape.circle,
      );
    } else if (isSelected) {
      return const BoxDecoration(
        color: Colors.pink,
        shape: BoxShape.circle,
      );
    } else {
      return BoxDecoration(
        color: Colors.green[50],
        shape: BoxShape.circle,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_isLoading)
          // Loading state
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 32),
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.pink[400]!),
                ),
                const SizedBox(height: 16),
                Text(
                  'Memuat jadwal...',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          )
        else if (_error != null)
          // Error state
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 32),
                Icon(
                  Icons.error_outline,
                  size: 48,
                  color: Colors.red[400],
                ),
                const SizedBox(height: 16),
                Text(
                  _error!,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.red[400],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _fetchBookedDates,
                  child: const Text('Coba Lagi'),
                ),
                const SizedBox(height: 32),
              ],
            ),
          )
        else
          // Calendar
          Column(
            children: [
              TableCalendar(
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                startingDayOfWeek: StartingDayOfWeek.monday,
                eventLoader: _getEventsForDay,
                selectedDayPredicate: (day) {
                  return _selectedDay != null && isSameDay(_selectedDay!, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  // Jangan pilih tanggal yang sudah berlalu
                  if (_isPastDate(selectedDay)) {
                    return;
                  }

                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });

                  // Callback untuk parent widget
                  if (widget.onDateSelected != null) {
                    widget.onDateSelected!(selectedDay);
                  }

                  // Tampilkan detail tanggal terpilih
                  if (widget.showSelectedDateDetails) {
                    _showDateAvailabilityDetails(selectedDay);
                  }
                },
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                onPageChanged: (focusedDay) {
                  setState(() {
                    _focusedDay = focusedDay;
                  });

                  // Ambil ketersediaan bulan yang baru
                  _fetchMonthlyAvailability(
                    focusedDay.year,
                    focusedDay.month,
                  );
                },
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: Colors.pink[300],
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: const BoxDecoration(
                    color: Colors.pink,
                    shape: BoxShape.circle,
                  ),
                  markerDecoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  weekendTextStyle: TextStyle(color: Colors.red[300]),
                  outsideDaysVisible: false,
                ),
                calendarBuilders: CalendarBuilders(
                  defaultBuilder: (context, date, _) {
                    final isSelected =
                        _selectedDay != null && isSameDay(date, _selectedDay!);
                    return Container(
                      margin: const EdgeInsets.all(4.0),
                      alignment: Alignment.center,
                      decoration: _calendarBuilders(date, isSelected),
                      child: Text(
                        '${date.day}',
                        style: TextStyle(
                          color: _isPastDate(date)
                              ? Colors.grey
                              : _isDateBooked(date)
                                  ? Colors.red[700]
                                  : isSelected
                                      ? Colors.white
                                      : Colors.black,
                        ),
                      ),
                    );
                  },
                  todayBuilder: (context, date, _) {
                    final isSelected =
                        _selectedDay != null && isSameDay(date, _selectedDay!);
                    return Container(
                      margin: const EdgeInsets.all(4.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.pink : Colors.pink[100],
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '${date.day}',
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.pink[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                  ),
                  leftChevronIcon: Icon(
                    Icons.chevron_left,
                    color: Colors.grey[800],
                    size: 28,
                  ),
                  rightChevronIcon: Icon(
                    Icons.chevron_right,
                    color: Colors.grey[800],
                    size: 28,
                  ),
                ),
              ),
              // Legend
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildLegendItem(Colors.grey[100]!, 'Sudah Berlalu'),
                    _buildLegendItem(Colors.red[100]!, 'Sudah Dipesan'),
                    _buildLegendItem(Colors.green[50]!, 'Tersedia'),
                  ],
                ),
              ),
            ],
          ),

        // Info
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.pink[50],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.pink[100]!),
            ),
            child: Row(
              children: [
                Icon(Icons.info_outline, color: Colors.pink[700], size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Pilih tanggal untuk memeriksa ketersediaan atau menghubungi tim kami untuk informasi lebih lanjut.',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.pink[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLegendItem(Color color, String label) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }

  void _showDateAvailabilityDetails(DateTime date) {
    final isBooked = _isDateBooked(date);

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Detail Ketersediaan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.grey[600]),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),

              // Content
              Card(
                elevation: 0,
                color: Colors.grey[50],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Colors.grey[200]!),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Date
                      Text(
                        'Tanggal: ${DateFormat('dd MMMM yyyy', 'id').format(date)}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Status
                      Row(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: isBooked ? Colors.red : Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            isBooked ? 'Sudah Dipesan' : 'Tersedia',
                            style: TextStyle(
                              fontSize: 14,
                              color: isBooked ? Colors.red : Colors.green[700],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Actions
                      if (!isBooked) ...[
                        const Text(
                          'Ingin memesan untuk tanggal ini?',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 12),
                        // Book button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                              // Navigasi ke halaman pemesanan
                              Navigator.pushNamed(
                                context,
                                '/reserve-date',
                                arguments: date,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink[400],
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text('Reservasi Tanggal'),
                          ),
                        ),
                      ] else ...[
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.red[50],
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.red[100]!),
                          ),
                          child: Text(
                            'Tanggal ini sudah dipesan. Silakan pilih tanggal lain yang tersedia.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.red[700],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                      const SizedBox(height: 12),
                      // Close button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.pink,
                            side: BorderSide(color: Colors.pink[300]!),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text('Lihat Tanggal Lain'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
