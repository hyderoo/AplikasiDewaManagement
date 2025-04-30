// Halaman Daftar Pesanan
import 'package:flutter/material.dart';

class DaftarPesananPage extends StatelessWidget {
  const DaftarPesananPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Daftar Pesanan'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: const Icon(Icons.event, color: Colors.pink),
              title: Text('Pesanan #${index + 1}'),
              subtitle: const Text('Paket Pernikahan Hemat'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/detail_pesanan');
              },
            ),
          );
        },
      ),
    );
  }
}
