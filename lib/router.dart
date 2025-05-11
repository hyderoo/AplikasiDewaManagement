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
      builder: (context, state) {
        String? search = state.extra as String?;
        return LayananPage(search: search);
      },
      routes: [
        GoRoute(
          path: 'custom',
          name: 'custom-layanan',
          builder: (context, state) {
            return CustomFeaturesPage();
          },
        ),
      ],
    ),
    GoRoute(
      path: '/portofolio',
      name: 'portofolio',
      builder: (context, state) => const PortfolioPage(),
      routes: [
        GoRoute(
          path: 'detail',
          name: 'portofolio-detail',
          builder: (context, state) => PortfolioDetailPage(
            portfolio: state.extra as PortfolioModel,
          ),
        ),
      ],
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
            routes: [
              GoRoute(
                path: 'custom',
                name: 'order-custom',
                builder: (context, state) => CustomOrderFormPage(
                  selectedFeatures: (state.extra as Map)['selectedFeatures']
                      as List<FeatureModel>,
                  totalPrice: (state.extra as Map)['totalPrice'] as double,
                ),
              ),
            ]),
        GoRoute(
          path: 'detail/:id',
          name: 'detail',
          builder: (context, state) => DetailPesananPage(
            id: int.tryParse(state.pathParameters['id'] ?? '0') ?? 0,
          ),
        ),
        GoRoute(
          path: 'payment/detail/:id',
          name: 'payment-detail',
          builder: (context, state) => PaymentDetailPage(
            paymentId: int.tryParse(state.pathParameters['id'] ?? '0') ?? 0,
          ),
        ),
        GoRoute(
          path: 'payment/order/:id',
          name: 'payment-order',
          builder: (context, state) => PaymentMethodPage(
            orderId: int.tryParse(state.pathParameters['id'] ?? '0') ?? 0,
          ),
        ),
        GoRoute(
          path: 'payment/riwayat/:orderId',
          name: 'riwayat-pembayaran',
          builder: (context, state) => PaymentHistoryPage(
            orderId: int.parse(state.pathParameters['orderId']!),
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
