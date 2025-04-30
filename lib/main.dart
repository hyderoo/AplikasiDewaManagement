import 'package:dewa_wo_app/pages/detail_pesanan_page.dart';
import 'package:dewa_wo_app/pages/home/home_page.dart';
import 'package:dewa_wo_app/pages/layanan_page.dart';
import 'package:dewa_wo_app/pages/portofolio_page.dart';
import 'package:flutter/material.dart';

import 'pages/tim_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/layanan': (context) => const LayananPage(),
        '/portofolio': (context) => const PortofolioPage(),
        '/pesanan': (context) => const DetailPesananPage(),
        '/tim': (context) => const TimPage(),
      },
    );
  }
}
