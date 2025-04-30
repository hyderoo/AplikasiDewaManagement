// Halaman Detail Pesanan
import 'package:flutter/material.dart';

class DetailPesananPage extends StatelessWidget {
  const DetailPesananPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Detail Pesanan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Pesanan #1',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 8),
            const Text('Paket: Paket Pernikahan Hemat'),
            const SizedBox(height: 8),
            const Text('Tanggal: 12 Juni 2025'),
            const SizedBox(height: 8),
            const Text('Lokasi: Denpasar, Bali'),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              onPressed: () {
                Navigator.pushNamed(context, '/detail_pembayaran');
              },
              child: const Text('Lihat Detail Pembayaran'),
            )
          ],
        ),
      ),
    );
  }
}
