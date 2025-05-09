import 'package:cached_network_image/cached_network_image.dart';
import 'package:dewa_wo_app/core/consts/app_consts.dart';
import 'package:dewa_wo_app/cubits/service/service_cubit.dart';
import 'package:dewa_wo_app/dialogs/login_required_dialog.dart';
import 'package:dewa_wo_app/models/catalog_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:table_calendar/table_calendar.dart';

class LayananPage extends StatefulWidget {
  const LayananPage({super.key});

  @override
  State<LayananPage> createState() => _LayananPageState();
}

class _LayananPageState extends State<LayananPage> {
  bool _isSearchMode = false;
  final TextEditingController _searchController = TextEditingController();
  String _selectedCategory = 'Semua';
  final List<String> _categories = [
    'Semua',
    'Dokumentasi',
    'Dekorasi',
    'Catering',
    'Venue'
  ];
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;

  List<CatalogModel> _filteredLayanan = [];
  late final ServiceCubit _serviceCubit;

  @override
  void initState() {
    super.initState();
    _serviceCubit = context.read<ServiceCubit>();
    _serviceCubit.getServices();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterLayanan(List<CatalogModel> services, String category) {
    setState(() {
      _selectedCategory = category;
      if (category == 'Semua') {
        _filteredLayanan = services;
      } else {
        _filteredLayanan =
            services.where((service) => service.type == category).toList();
      }
    });
  }

  void _searchLayanan(List<CatalogModel> services, String query) {
    if (query.isEmpty) {
      _filterLayanan(services, _selectedCategory);
      return;
    }

    final filteredByCategory = _selectedCategory == 'Semua'
        ? services
        : services
            .where((service) => service.type == _selectedCategory)
            .toList();

    setState(() {
      _filteredLayanan = filteredByCategory
          .where((service) =>
              service.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.pink,
          automaticallyImplyLeading: false,
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              if (_isSearchMode) {
                setState(() {
                  _isSearchMode = false;
                  _searchController.clear();
                  if (_serviceCubit.state is ServiceSuccess) {
                    final services =
                        (_serviceCubit.state as ServiceSuccess).services;
                    _filterLayanan(services, _selectedCategory);
                  }
                });
              } else {
                context.pop();
              }
            },
          ),
          title: _isSearchMode
              ? TextField(
                  controller: _searchController,
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    hintText: 'Cari layanan...',
                    hintStyle: TextStyle(color: Colors.white70),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 16,
                    ),
                    filled: false,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                  ),
                  onChanged: (query) {
                    if (_serviceCubit.state is ServiceSuccess) {
                      final services =
                          (_serviceCubit.state as ServiceSuccess).services;
                      _searchLayanan(services, query);
                    }
                  },
                  autofocus: true,
                )
              : const Text(
                  'Layanan Kami',
                  style: TextStyle(color: Colors.white),
                ),
          actions: [
            IconButton(
              icon: Icon(
                _isSearchMode ? Icons.clear : Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                if (_isSearchMode) {
                  _searchController.clear();
                  if (_serviceCubit.state is ServiceSuccess) {
                    final services =
                        (_serviceCubit.state as ServiceSuccess).services;
                    _searchLayanan(services, '');
                  }
                } else {
                  setState(() {
                    _isSearchMode = true;
                  });
                }
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 60),
          _buildCategoryList(),
          Expanded(
            child: BlocConsumer<ServiceCubit, ServiceState>(
              bloc: _serviceCubit,
              listener: (context, state) {
                if (state is ServiceSuccess) {
                  _filterLayanan(state.services, _selectedCategory);
                }
              },
              builder: (context, state) {
                if (state is ServiceLoading || state is ServiceInitial) {
                  return _buildShimmerList();
                } else if (state is ServiceSuccess) {
                  return RefreshIndicator(
                    onRefresh: () => _serviceCubit.getServices(),
                    child: _filteredLayanan.isEmpty
                        ? _buildEmptyStateWithRefresh()
                        : _buildMainContent(),
                  );
                } else if (state is ServiceError) {
                  return _buildErrorState(state.message);
                }
                return _buildShimmerList();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryList() {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          final category = _categories[index];
          final isSelected = category == _selectedCategory;

          return GestureDetector(
            onTap: () {
              if (_serviceCubit.state is ServiceSuccess) {
                final services =
                    (_serviceCubit.state as ServiceSuccess).services;
                _filterLayanan(services, category);
              }
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: isSelected ? Colors.pink[50] : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isSelected ? Colors.pink[50]! : Colors.grey[400]!,
                  width: 1,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                category,
                style: TextStyle(
                  color: isSelected ? Colors.pink[700] : Colors.grey[700],
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildShimmerList() {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyStateWithRefresh() {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search_off,
                  size: 80,
                  color: Colors.grey[400],
                ),
                const SizedBox(height: 16),
                Text(
                  'Tidak ada layanan yang ditemukan',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Coba pilih kategori lain atau ubah kata kunci pencarian',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Text(
                  'Tarik ke bawah untuk menyegarkan',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildErrorState(String message) {
    return RefreshIndicator(
      onRefresh: () => _serviceCubit.getServices(),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 80,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Terjadi kesalahan',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      message,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => _serviceCubit.getServices(),
                    child: const Text('Coba Lagi'),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'atau tarik ke bawah untuk menyegarkan',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[500],
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          _buildLayananList(),
          _buildCustomPackageCard(),
          _buildCalendarCard(),
          const SizedBox(height: 64),
        ],
      ),
    );
  }

  Widget _buildLayananList() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(16),
      itemCount: _filteredLayanan.length,
      itemBuilder: (context, index) {
        return _buildLayananCard(_filteredLayanan[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 16);
      },
    );
  }

  Widget _buildLayananCard(CatalogModel service) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: CachedNetworkImage(
              imageUrl: '${AppConsts.baseUrl}${service.image}',
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                color: Colors.grey[200],
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                  ),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                height: 180,
                width: double.infinity,
                color: Colors.pink[100],
                alignment: Alignment.center,
                child: Icon(Icons.image, size: 60, color: Colors.pink[300]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        service.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      service.formattedPrice,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  service.type,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.pink[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  service.description,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.4,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                if (service.features.isNotEmpty)
                  _buildFeatureGrid(service.features),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => LoginRequiredDialog.check(
                      context: context,
                      action: () => context.push(
                        '/pesanan/form',
                        extra: service,
                      ),
                      actionName: 'memesan layanan',
                    ),
                    child: const Text('Pilih Paket'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureGrid(List<String> features) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: features.length > 4 ? 4 : features.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              const Text(
                '✓',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  features[index],
                  style: const TextStyle(fontSize: 12),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCustomPackageCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        child: InkWell(
          onTap: () {
            LoginRequiredDialog.check(
              context: context,
              action: () => context.push('/custom-package'),
              actionName: 'membuat paket khusus',
            );
          },
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: const EdgeInsets.all(24),
            width: double.infinity,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.pink,
                  size: 80,
                ),
                SizedBox(height: 16),
                Text(
                  'Buat Paket Khusus',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Susun paket pernikahan sesuai kebutuhan Anda',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCalendarCard() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Jadwal Acara',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Pilih tanggal untuk melihat ketersediaan',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              TableCalendar(
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                startingDayOfWeek: StartingDayOfWeek.monday,
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  leftChevronIcon: const Icon(
                    Icons.chevron_left,
                    color: Colors.black,
                    size: 32,
                  ),
                  rightChevronIcon: const Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                    size: 32,
                  ),
                  titleTextStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                  ),
                ),
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: Colors.pink[300],
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: const BoxDecoration(
                    color: Colors.pink,
                    shape: BoxShape.circle,
                  ),
                  markersMaxCount: 3,
                  weekendTextStyle: TextStyle(color: Colors.red[300]),
                ),
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });

                  // Show a bottom sheet with availability details
                  _showDateAvailabilityDetails(selectedDay);
                },
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(8),
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
            ],
          ),
        ),
      ),
    );
  }

  void _showDateAvailabilityDetails(DateTime date) {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Detail Ketersediaan',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tanggal: ${date.day}/${date.month}/${date.year}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Tersedia',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Ingin memesan untuk tanggal ini?',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            LoginRequiredDialog.check(
                              context: context,
                              action: () =>
                                  context.push('/reserve-date', extra: date),
                              actionName: 'mereservasi tanggal',
                            );
                          },
                          child: const Text('Reservasi Tanggal'),
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.pink),
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
