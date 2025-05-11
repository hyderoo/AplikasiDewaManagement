import 'package:dewa_wo_app/cubits/availability/availability_cubit.dart';
import 'package:dewa_wo_app/cubits/service/service_cubit.dart';
import 'package:dewa_wo_app/dialogs/login_required_dialog.dart';
import 'package:dewa_wo_app/core/models/catalog_model.dart';
import 'package:dewa_wo_app/pages/general/empty_page.dart';
import 'package:dewa_wo_app/pages/general/error_page.dart';
import 'package:dewa_wo_app/pages/general/header_page.dart';
import 'package:dewa_wo_app/pages/general/shimmer_page.dart';
import 'package:dewa_wo_app/pages/layanan/layanan_card.dart';
import 'package:dewa_wo_app/pages/layanan/wedding_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LayananPage extends StatefulWidget {
  final String? search;
  const LayananPage({
    super.key,
    this.search,
  });

  @override
  State<LayananPage> createState() => _LayananPageState();
}

class _LayananPageState extends State<LayananPage> {
  bool _isSearchMode = false;
  final TextEditingController _searchController = TextEditingController();
  String _selectedCategory = 'semua';

  List<CatalogModel> _filteredLayanan = [];
  late final ServiceCubit _serviceCubit;
  late final AvailabilityCubit _availabilityCubit;

  @override
  void initState() {
    super.initState();
    _searchController.text = widget.search ?? '';
    if (_searchController.text.isNotEmpty) {
      _isSearchMode = true;
    }
    _serviceCubit = context.read<ServiceCubit>();
    _availabilityCubit = context.read<AvailabilityCubit>();
    _serviceCubit.getServices();
    _availabilityCubit.getBookedDates();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterLayanan(List<CatalogModel> services, String categoryValue) {
    setState(() {
      _selectedCategory = categoryValue;
      if (categoryValue == 'semua') {
        _filteredLayanan = services;
      } else {
        _filteredLayanan =
            services.where((service) => service.type == categoryValue).toList();
      }
    });
  }

  void _searchLayanan(List<CatalogModel> services, String query) {
    if (query.isEmpty) {
      _filterLayanan(services, _selectedCategory);
      return;
    }

    final filteredByCategory = _selectedCategory == 'semua'
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
      appBar: buildHeader(
        context: context,
        isSearchMode: _isSearchMode,
        searchController: _searchController,
        title: 'Layanan Kami',
        searchHint: 'Cari Layanan Kami',
        backAction: () {
          setState(() {
            _isSearchMode = false;
            _searchController.clear();
            if (_serviceCubit.state is ServiceSuccess) {
              final services = (_serviceCubit.state as ServiceSuccess).services;
              _filterLayanan(services, _selectedCategory);
            }
          });
        },
        onChangedSearch: (query) {
          if (_serviceCubit.state is ServiceSuccess) {
            final services = (_serviceCubit.state as ServiceSuccess).services;
            _searchLayanan(services, query);
          }
        },
        closePressed: () {
          _searchController.clear();
          if (_serviceCubit.state is ServiceSuccess) {
            final services = (_serviceCubit.state as ServiceSuccess).services;
            _searchLayanan(services, '');
          }
        },
        searchPressed: () => setState(() => _isSearchMode = true),
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
                  _searchLayanan(state.services, _searchController.text);
                }
              },
              builder: (context, state) {
                if (state is ServiceLoading || state is ServiceInitial) {
                  return ShimmerPage();
                } else if (state is ServiceSuccess) {
                  return RefreshIndicator(
                    onRefresh: () => _serviceCubit.getServices(),
                    child: _filteredLayanan.isEmpty
                        ? EmptyPage(message: 'Tidak ada layanan yang ditemukan')
                        : _buildMainContent(),
                  );
                } else if (state is ServiceError) {
                  return ErrorPage(
                    fetchData: () => _serviceCubit.getServices(),
                    message: state.message,
                  );
                }
                return ShimmerPage();
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
        itemCount: serviceTypes.length,
        itemBuilder: (context, index) {
          final category = serviceTypes[index];
          final isSelected = category["value"] == _selectedCategory;

          return GestureDetector(
            onTap: () {
              if (_serviceCubit.state is ServiceSuccess) {
                final services =
                    (_serviceCubit.state as ServiceSuccess).services;
                _filterLayanan(services, category["value"]!);
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
                category["label"]!,
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
        return LayananCard(service: _filteredLayanan[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 16);
      },
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
              BlocBuilder<AvailabilityCubit, AvailabilityState>(
                bloc: _availabilityCubit,
                builder: (context, state) {
                  return WeddingCalendar(
                    onDateSelected: (date) {},
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
