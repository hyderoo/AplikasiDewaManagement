import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:dewa_wo_app/core/consts/app_consts.dart';
import 'package:dewa_wo_app/cubits/service/service_cubit.dart';
import 'package:dewa_wo_app/dialogs/login_required_dialog.dart';
import 'package:dewa_wo_app/core/models/catalog_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class ServiceWidget extends StatefulWidget {
  const ServiceWidget({super.key});

  @override
  State<ServiceWidget> createState() => _ServiceWidgetState();
}

class _ServiceWidgetState extends State<ServiceWidget> {
  late final ServiceCubit _serviceCubit;

  @override
  void initState() {
    super.initState();
    _serviceCubit = context.read<ServiceCubit>();
  }

  final List<Map<String, String>> _serviceTypes = [
    {"value": "semua", "label": "Semua"},
    {"value": "all-in-one", "label": "Paket Lengkap"},
    {"value": "decoration", "label": "Dekorasi"},
    {"value": "documentation", "label": "Dokumentasi"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Layanan Kami',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                onPressed: () => context.pushNamed('layanan'),
                child: const Text('Lihat Selengkapnya'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 400,
          child: BlocBuilder<ServiceCubit, ServiceState>(
            builder: (context, state) {
              if (state is ServiceLoading) {
                return _buildLayananShimmer();
              } else if (state is ServiceSuccess) {
                final services = state.services;
                if (services.isEmpty) {
                  return const Center(
                    child: Text('Tidak ada layanan yang tersedia'),
                  );
                }
                return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return _buildServiceCard(services[index]);
                  },
                );
              } else if (state is ServiceError) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 48,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        state.message,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.red),
                      ),
                      TextButton(
                        onPressed: () => _serviceCubit.getServices(),
                        child: const Text('Coba Lagi'),
                      ),
                    ],
                  ),
                );
              }
              return _buildLayananShimmer();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildLayananShimmer() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: 280,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        );
      },
    );
  }

  Widget _buildServiceCard(CatalogModel service) {
    return Container(
      width: 280,
      margin: const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 2),
      child: Card(
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
                fit: BoxFit.cover,
                height: 150,
                width: double.infinity,
                placeholder: (context, url) => Container(
                  color: Colors.grey[200],
                  child: const Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  height: 150,
                  color: Colors.pink[100],
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.image,
                    size: 50,
                    color: Colors.pink[300],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _serviceTypes.firstWhereOrNull(
                              (e) => e['value'] == service.type)?['label'] ??
                          '-',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      service.description,
                      style: const TextStyle(
                        fontSize: 12,
                        height: 1.4,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    if (service.features.isNotEmpty)
                      ...service.features.take(2).map((feature) => Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Row(
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
                                    feature,
                                    style: const TextStyle(fontSize: 12),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    if (service.features.length > 2)
                      Text(
                        '+ ${service.features.length - 2} item lainnya',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    const Spacer(),
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
                        child: const Text('Pilih Layanan'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
