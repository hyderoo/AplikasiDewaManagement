// Halaman Detail Pembayaran
import 'package:flutter/material.dart';

class DetailPembayaranPage extends StatelessWidget {
  const DetailPembayaranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Detail Pembayaran'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Nama Paket: Paket Pernikahan Hemat',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Total Harga: Rp 35.000.000'),
            SizedBox(height: 8),
            Text('Status Pembayaran: Belum Lunas'),
            SizedBox(height: 16),
            Text('Instruksi Pembayaran:',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Transfer ke rekening BCA 123456789 a.n. Dewa Organizer'),
          ],
        ),
      ),
    );
  }
}
