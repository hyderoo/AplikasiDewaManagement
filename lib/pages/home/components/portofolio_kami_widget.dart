import 'package:flutter/material.dart';

import 'section_title_widget.dart';

class PortofolioKamiWidget extends StatelessWidget {
  const PortofolioKamiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitleWidget(title: 'Portofolio Kami'),
        PortfolioCard(title: 'Pernikahan Adat Jawa Elegan'),
        PortfolioCard(title: 'Pernikahan Modern Minimalis'),
      ],
    );
  }
}

class PortfolioCard extends StatelessWidget {
  final String title;
  const PortfolioCard({required this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            color: Colors.grey[300],
            child: const Center(child: Icon(Icons.image, size: 40)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const Text('Desain kontemporer dengan sentuhan elegan'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
