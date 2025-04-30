import 'package:flutter/material.dart';

import 'section_title_widget.dart';

class UlasanWidget extends StatelessWidget {
  const UlasanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitleWidget(title: 'Ulasan'),
        _ReviewCard(name: 'Abian Syahputra', rating: 4.8),
        _ReviewCard(name: 'Abian Syahputra', rating: 4.8),
      ],
    );
  }
}

class _ReviewCard extends StatelessWidget {
  final String name;
  final double rating;
  const _ReviewCard({required this.name, required this.rating});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.person)),
        title: Text(name),
        subtitle: const Text('Lorem Ipsum is simply dummy text...'),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.star, color: Colors.amber),
            Text(rating.toString()),
          ],
        ),
      ),
    );
  }
}
