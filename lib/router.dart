part of 'main.dart';

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
      builder: (context, state) => const PortfolioPage(),
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
            layanan: state.extra as CatalogModel,
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
