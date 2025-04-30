import 'package:flutter/material.dart';

class TentangKamiWidget extends StatelessWidget {
  const TentangKamiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            Text(
              'Tentang Kami',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
                'Dewa Management adalah penyedia jasa wedding organizer profesional yang berdedikasi...'),
          ],
        ),
      ),
    );
  }
}
