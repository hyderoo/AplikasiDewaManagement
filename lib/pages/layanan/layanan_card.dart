import 'package:cached_network_image/cached_network_image.dart';
import 'package:dewa_wo_app/core/consts/app_consts.dart';
import 'package:dewa_wo_app/core/models/catalog_model.dart';
import 'package:dewa_wo_app/dialogs/login_required_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LayananCard extends StatelessWidget {
  final CatalogModel service;
  const LayananCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
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
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    _getServiceTypeLabel(service.type),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.pink[700],
                      fontWeight: FontWeight.bold,
                    ),
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
                  _buildFeatureGrid(context, service.features),
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

  String _getServiceTypeLabel(String typeValue) {
    final typeMap = serviceTypes.firstWhere(
      (type) => type["value"] == typeValue,
      orElse: () => {"value": typeValue, "label": typeValue},
    );
    return typeMap["label"]!;
  }

  Widget _buildFeatureGrid(BuildContext context, List<String> features) {
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
}
