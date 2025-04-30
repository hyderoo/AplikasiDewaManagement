import 'package:flutter/material.dart';

import 'section_title_widget.dart';

class LayananKamiWidget extends StatelessWidget {
  const LayananKamiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitleWidget(title: 'Layanan Kami'),
        _PackageCard(
            title: 'Paket Pernikahan Lengkap',
            price: 'Rp 50.000.000 - Rp 100.000.000'),
        _PackageCard(
            title: 'Paket Pernikahan Hemat',
            price: 'Rp 25.000.000 - Rp 50.000.000'),
      ],
    );
  }
}

class _PackageCard extends StatelessWidget {
  final String title;
  final String price;
  const _PackageCard({required this.title, required this.price});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Container(
            height: 150,
            color: Colors.grey[300],
            child: const Center(child: Icon(Icons.image, size: 50)),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(price, style: const TextStyle(color: Colors.pink)),
                const SizedBox(height: 8),
                const Text(
                    '✓ Konsultasi desain dan tema\n✓ Manajemen vendor\n✓ Dokumentasi profesional')
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            onPressed: () {},
            child: const Text('Pilih Paket'),
          )
        ],
      ),
    );
  }
}
