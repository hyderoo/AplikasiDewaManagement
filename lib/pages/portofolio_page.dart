// Halaman Portofolio Kami
import 'package:flutter/material.dart';

class PortofolioPage extends StatelessWidget {
  const PortofolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Portofolio Kami'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          PortfolioItem(
            title: 'Pernikahan Adat Bali',
            description: 'Dekorasi megah dengan nuansa budaya Bali.',
          ),
          PortfolioItem(
            title: 'Pernikahan Garden Party',
            description: 'Konsep outdoor dengan kesan romantis dan santai.',
          ),
        ],
      ),
    );
  }
}

class PortfolioItem extends StatelessWidget {
  final String title;
  final String description;
  const PortfolioItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
