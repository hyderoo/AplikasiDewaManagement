import 'package:dewa_wo_app/pages/auth/login/login_page.dart';
import 'package:dewa_wo_app/pages/auth/register/register_page.dart';
import 'package:dewa_wo_app/pages/home/home_page.dart';
import 'package:dewa_wo_app/pages/layanan/layanan_page.dart';
import 'package:dewa_wo_app/pages/not_found/not_found_page.dart';
import 'package:dewa_wo_app/pages/pesanan/pesanan_page.dart';
import 'package:dewa_wo_app/pages/portofolio/portofolio_page.dart';
import 'package:dewa_wo_app/pages/tim/tim_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

// Konfigurasi Go Router
final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomePage(),
      // routes: [
      //   GoRoute(
      //     path: 'detail/:id',
      //     name: 'detail',
      //     builder: (context, state) {
      //       final id = state.pathParameters['id'] ?? 'unknown';
      //       return DetailPage(id: id);
      //     },
      //   ),
      //   GoRoute(
      //     path: 'profile',
      //     name: 'profile',
      //     builder: (context, state) => const ProfilePage(),
      //   ),
      //   GoRoute(
      //     path: 'settings',
      //     name: 'settings',
      //     builder: (context, state) => const SettingsPage(),
      //   ),
      // ],
    ),
    GoRoute(
      path: '/layanan',
      name: 'layanan',
      builder: (context, state) => const LayananPage(),
    ),
    GoRoute(
      path: '/portofolio',
      name: 'portofolio',
      builder: (context, state) => const PortofolioPage(),
    ),
    GoRoute(
      path: '/tim',
      name: 'tim',
      builder: (context, state) => const TimPage(),
    ),
    GoRoute(
      path: '/pesanan',
      name: 'pesanan',
      builder: (context, state) => const PesananPage(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      builder: (context, state) => const RegisterPage(),
    ),
  ],
  errorBuilder: (context, state) => NotFoundPage(),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dewa Management - Wedding Organizer',
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
          accentColor: Colors.pinkAccent,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[400],
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.pink,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.pink[200]!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.pink, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.pink[200]!),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
        textTheme: TextTheme(
          displayLarge:
              TextStyle(color: Colors.pink[900], fontWeight: FontWeight.bold),
          displayMedium:
              TextStyle(color: Colors.pink[800], fontWeight: FontWeight.bold),
          displaySmall:
              TextStyle(color: Colors.pink[700], fontWeight: FontWeight.w600),
          headlineMedium:
              TextStyle(color: Colors.pink[900], fontWeight: FontWeight.bold),
          headlineSmall:
              TextStyle(color: Colors.pink[800], fontWeight: FontWeight.w600),
          titleLarge:
              TextStyle(color: Colors.pink[700], fontWeight: FontWeight.bold),
          titleMedium:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(color: Colors.black87),
          bodyMedium: TextStyle(color: Colors.black54),
        ),
        cardTheme: CardTheme(
          elevation: 2,
          margin: EdgeInsets.all(2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          shadowColor: Colors.pink[100],
        ),
      ),
    );
  }
}
