import 'package:dewa_wo_app/core/di/dependency_injection.dart';
import 'package:dewa_wo_app/cubits/auth/auth_cubit.dart';
import 'package:dewa_wo_app/models/pesanan_model.dart';
import 'package:dewa_wo_app/models/service_model.dart';
import 'package:dewa_wo_app/pages/akun/pengaturan_akun_page.dart';
import 'package:dewa_wo_app/pages/akun/pengaturan_profile_page.dart';
import 'package:dewa_wo_app/pages/auth/forgot/forgot_password_page.dart';
import 'package:dewa_wo_app/pages/auth/login/login_page.dart';
import 'package:dewa_wo_app/pages/auth/register/register_page.dart';
import 'package:dewa_wo_app/pages/home/home_page.dart';
import 'package:dewa_wo_app/pages/layanan/layanan_page.dart';
import 'package:dewa_wo_app/pages/legal/privacy_policy_page.dart';
import 'package:dewa_wo_app/pages/legal/terms_conditions_page.dart';
import 'package:dewa_wo_app/pages/not_found/not_found_page.dart';
import 'package:dewa_wo_app/pages/pesanan/pembayaran/detail_pembayaran_page.dart';
import 'package:dewa_wo_app/pages/pesanan/detail/detail_pesanan_page.dart';
import 'package:dewa_wo_app/pages/pesanan/form/form_pemesanan_page.dart';
import 'package:dewa_wo_app/pages/pesanan/list/pesanan_page.dart';
import 'package:dewa_wo_app/pages/portofolio/portofolio_page.dart';
import 'package:dewa_wo_app/pages/splash/splash_page.dart';
import 'package:dewa_wo_app/pages/tim/tim_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id', null);
  await initDependencies();

  runApp(const MyApp());
}

// Konfigurasi Go Router
final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomePage(),
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
      routes: [
        GoRoute(
          path: 'form',
          name: 'form',
          builder: (context, state) => FormPemesananPage(
            layanan: state.extra as ServiceModel,
          ),
        ),
        GoRoute(
          path: 'detail',
          name: 'detail',
          builder: (context, state) => DetailPesananPage(
            pesanan: state.extra as PesananModel,
          ),
        ),
        GoRoute(
          path: 'bayar',
          name: 'bayar',
          builder: (context, state) => DetailPembayaranPage(
            pesanan: state.extra as PesananModel,
          ),
        ),
      ],
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const SizedBox.shrink(),
      routes: [
        GoRoute(
          path: 'login',
          name: 'login',
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: 'register',
          name: 'register',
          builder: (context, state) => const RegisterPage(),
        ),
        GoRoute(
          path: 'forgot-password',
          name: 'forgot-password',
          builder: (context, state) => const ForgotPasswordPage(),
        ),
      ],
    ),
    GoRoute(
      path: '/legal',
      builder: (context, state) => const SizedBox.shrink(),
      routes: [
        GoRoute(
          path: 'privacy-policy',
          name: 'privacy-policy',
          builder: (context, state) => const PrivacyPolicyPage(),
        ),
        GoRoute(
          path: 'term-and-condition',
          name: 'term-and-condition',
          builder: (context, state) => const TermsConditionsPage(),
        ),
      ],
    ),
    GoRoute(
      path: '/account',
      builder: (context, state) => const SizedBox.shrink(),
      routes: [
        GoRoute(
          path: 'setting',
          name: 'setting',
          builder: (context, state) => const PengaturanAkunPage(),
        ),
        GoRoute(
          path: 'profile',
          name: 'profile',
          builder: (context, state) => const PengaturanProfilePage(),
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const NotFoundPage(),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthCubit>()),
      ],
      child: MaterialApp.router(
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
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.pink,
            foregroundColor: Colors.white,
            elevation: 0,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink[400],
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
              borderSide: const BorderSide(color: Colors.pink, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.pink[200]!),
            ),
            fillColor: Colors.white,
            filled: true,
            hintStyle: TextStyle(
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w400,
            ),
          ),
          textTheme: GoogleFonts.publicSansTextTheme(textTheme).copyWith(
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
            titleMedium: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
            bodyLarge: const TextStyle(color: Colors.black87),
            bodyMedium: const TextStyle(color: Colors.black54),
          ),
          cardTheme: CardTheme(
            elevation: 2,
            margin: const EdgeInsets.all(2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: Colors.pink.shade100,
                width: 1,
              ),
            ),
            shadowColor: Colors.grey.shade100,
          ),
        ),
      ),
    );
  }
}
