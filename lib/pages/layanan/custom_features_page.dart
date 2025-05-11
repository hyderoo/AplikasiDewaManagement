import 'package:dewa_wo_app/core/models/response/features_response.dart';
import 'package:dewa_wo_app/cubits/custom_features/custom_features_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CustomFeaturesPage extends StatefulWidget {
  const CustomFeaturesPage({super.key});

  @override
  State<CustomFeaturesPage> createState() => _CustomFeaturesPageState();
}

class _CustomFeaturesPageState extends State<CustomFeaturesPage> {
  @override
  void initState() {
    super.initState();
    context.read<CustomFeaturesCubit>().loadCustomFeatures();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paket Custom'),
        centerTitle: true,
        actions: [
          BlocBuilder<CustomFeaturesCubit, CustomFeaturesState>(
            builder: (context, state) {
              if (state is CustomFeaturesSuccess) {
                if (state.selectedFeatures.isNotEmpty) {
                  return IconButton(
                    icon: const Icon(Icons.refresh),
                    onPressed: () {
                      context.read<CustomFeaturesCubit>().clearSelection();
                    },
                    tooltip: 'Reset Pilihan',
                  );
                }
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
      body: BlocBuilder<CustomFeaturesCubit, CustomFeaturesState>(
        builder: (context, state) {
          if (state is CustomFeaturesLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CustomFeaturesSuccess) {
            return Stack(
              children: [
                _buildFeaturesList(state),
                if (state.selectedFeatures.isNotEmpty)
                  _buildBottomTotalBar(state),
              ],
            );
          } else if (state is CustomFeaturesError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 64,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    state.message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context
                        .read<CustomFeaturesCubit>()
                        .loadCustomFeatures(),
                    child: const Text('Coba Lagi'),
                  ),
                ],
              ),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }

  Widget _buildFeaturesList(CustomFeaturesSuccess state) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 80),
      itemCount: state.features.length,
      itemBuilder: (context, index) {
        final feature = state.features[index];
        final isSelected =
            state.selectedFeatures.any((f) => f.id == feature.id);

        return _buildFeatureCard(feature, isSelected);
      },
    );
  }

  Widget _buildFeatureCard(FeatureModel feature, bool isSelected) {
    final formatCurrency = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    final price = double.parse(feature.price);
    final formattedPrice = formatCurrency.format(price);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: isSelected ? Colors.pink : Colors.transparent,
          width: isSelected ? 2 : 0,
        ),
      ),
      child: InkWell(
        onTap: () {
          context.read<CustomFeaturesCubit>().toggleFeature(feature);
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Checkbox
              Padding(
                padding: const EdgeInsets.only(top: 2, right: 16),
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Checkbox(
                    value: isSelected,
                    activeColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    onChanged: (value) {
                      context
                          .read<CustomFeaturesCubit>()
                          .toggleFeature(feature);
                    },
                  ),
                ),
              ),
              // Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      feature.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      feature.description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      formattedPrice,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.pink,
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

  Widget _buildBottomTotalBar(CustomFeaturesSuccess state) {
    final formatCurrency = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${state.selectedFeatures.length} Fitur dipilih',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    formatCurrency.format(state.totalPrice),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed('order-custom', extra: {
                  'selectedFeatures': state.selectedFeatures,
                  'totalPrice': state.totalPrice,
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Lanjutkan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
