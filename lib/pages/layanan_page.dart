// Halaman Layanan Kami
import 'package:flutter/material.dart';

class LayananPage extends StatelessWidget {
  const LayananPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Layanan Kami'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ServiceCard(
            title: 'Paket Pernikahan Lengkap',
            description:
                'Paket all-in untuk pesta pernikahan mewah dan lengkap.',
          ),
          ServiceCard(
            title: 'Paket Pernikahan Hemat',
            description: 'Solusi pernikahan dengan budget lebih terjangkau.',
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  const ServiceCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(description),
          ],
        ),
      ),
    );
  }
}
