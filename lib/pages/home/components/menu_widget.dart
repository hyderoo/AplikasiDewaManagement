import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _IconCategory(
              title: 'Layanan',
              onTap: () {
                Navigator.pushNamed(context, '/layanan');
              }),
          _IconCategory(
              title: 'Portofolio',
              onTap: () {
                Navigator.pushNamed(context, '/portofolio');
              }),
          _IconCategory(
              title: 'Tim',
              onTap: () {
                Navigator.pushNamed(context, '/tim');
              }),
          _IconCategory(
              title: 'Pesanan',
              onTap: () {
                Navigator.pushNamed(context, '/pesanan');
              }),
        ],
      ),
    );
  }
}

class _IconCategory extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const _IconCategory({required this.title, required this.onTap});
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
