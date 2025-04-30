// Home Page
// Halaman utama aplikasi Wedding Organizer

import 'package:dewa_wo_app/pages/home/components/layanan_kami_widget.dart';
import 'package:dewa_wo_app/pages/home/components/menu_widget.dart';
import 'package:dewa_wo_app/pages/home/components/portofolio_kami_widget.dart';
import 'package:dewa_wo_app/pages/home/components/section_title_widget.dart';
import 'package:dewa_wo_app/pages/home/components/tentang_kami_widget.dart';
import 'package:dewa_wo_app/pages/home/components/ulasan_widget.dart';
import 'package:dewa_wo_app/pages/portofolio_page.dart';
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
          MenuWidget(),
          TentangKamiWidget(),
          LayananKamiWidget(),
          PortofolioKamiWidget(),
          UlasanWidget(),
        ],
      ),
    );
  }
}
