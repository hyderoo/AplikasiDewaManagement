// Home Page
// Halaman utama aplikasi Wedding Organizer

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Beranda'),
      ),
      body: ListView(
        children: [
          // Bagian kategori
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconCategory(
                    title: 'Layanan',
                    onTap: () {
                      Navigator.pushNamed(context, '/layanan');
                    }),
                IconCategory(
                    title: 'Portofolio',
                    onTap: () {
                      Navigator.pushNamed(context, '/portofolio');
                    }),
                IconCategory(
                    title: 'Tim',
                    onTap: () {
                      Navigator.pushNamed(context, '/tim');
                    }),
                IconCategory(
                    title: 'Pesanan',
                    onTap: () {
                      Navigator.pushNamed(context, '/pesanan');
                    }),
              ],
            ),
          ),
          // Tentang Kami
          Card(
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
          ),
          // Layanan Kami
          SectionTitle(title: 'Layanan Kami'),
          PackageCard(
              title: 'Paket Pernikahan Lengkap',
              price: 'Rp 50.000.000 - Rp 100.000.000'),
          PackageCard(
              title: 'Paket Pernikahan Hemat',
              price: 'Rp 25.000.000 - Rp 50.000.000'),

          // Portofolio Kami
          SectionTitle(title: 'Portofolio Kami'),
          PortfolioCard(title: 'Pernikahan Adat Jawa Elegan'),
          PortfolioCard(title: 'Pernikahan Modern Minimalis'),

          // Ulasan
          SectionTitle(title: 'Ulasan'),
          ReviewCard(name: 'Abian Syahputra', rating: 4.8),
          ReviewCard(name: 'Abian Syahputra', rating: 4.8),
        ],
      ),
    );
  }
}

class IconCategory extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const IconCategory({required this.title, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          const Icon(Icons.circle, color: Colors.pink),
          const SizedBox(height: 4),
          Text(title),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const Text('Lihat Selengkapnya', style: TextStyle(color: Colors.pink))
        ],
      ),
    );
  }
}

class PackageCard extends StatelessWidget {
  final String title;
  final String price;
  const PackageCard({required this.title, required this.price});
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

class ReviewCard extends StatelessWidget {
  final String name;
  final double rating;
  const ReviewCard({required this.name, required this.rating});
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
