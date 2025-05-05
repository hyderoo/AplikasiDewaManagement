import 'package:dewa_wo_app/core/di/dependency_injection.dart';
import 'package:dewa_wo_app/cubits/auth/auth_cubit.dart';
import 'package:dewa_wo_app/cubits/portfolio/portfolio_cubit.dart';
import 'package:dewa_wo_app/cubits/service/service_cubit.dart';
import 'package:dewa_wo_app/cubits/review/review_cubit.dart';
import 'package:dewa_wo_app/models/catalog_model.dart';
import 'package:dewa_wo_app/models/portfolio_model.dart';
import 'package:dewa_wo_app/models/review_model.dart';
import 'package:dewa_wo_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final PortfolioCubit _portfolioCubit;
  late final ServiceCubit _serviceCubit;
  late final ReviewCubit _reviewCubit;

  @override
  void initState() {
    super.initState();

    // Initialize cubits
    _portfolioCubit = getIt<PortfolioCubit>();
    _serviceCubit = getIt<ServiceCubit>();
    _reviewCubit = getIt<ReviewCubit>();

    // Load data
    _loadData();
  }

  Future<void> _loadData() async {
    _portfolioCubit.getPortfolios();
    _serviceCubit.getServices();
    _reviewCubit.getReviews();
  }

  @override
  void dispose() {
    _portfolioCubit.resetState();
    _serviceCubit.resetState();
    _reviewCubit.resetState();
    super.dispose();
  }

  // Check if user is authenticated
  bool _isAuthenticated() {
    final authState = getIt<AuthCubit>().state;
    return authState is AuthAuthenticated;
  }

  // Show login required dialog
  void _showLoginRequiredDialog({required String actionName}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Login Diperlukan',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.lock_outline,
              size: 64,
              color: Colors.pink[300],
            ),
            const SizedBox(height: 16),
            Text(
              'Untuk $actionName, Anda perlu login terlebih dahulu.',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Silakan login ke akun Anda atau daftar jika belum memiliki akun.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey[800],
            ),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.pushNamed('login');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('Login'),
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 8),
        actionsPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }

  // Handle authenticated actions
  void _handleAuthenticatedAction({
    required VoidCallback action,
    required String actionName,
  }) {
    if (_isAuthenticated()) {
      // User is authenticated, proceed with action
      action();
    } else {
      // User is not authenticated, show login dialog
      _showLoginRequiredDialog(actionName: actionName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: RefreshIndicator(
              onRefresh: _loadData,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    _buildMenuRow(),
                    const SizedBox(height: 24),
                    _buildAboutUsCard(),
                    const SizedBox(height: 24),
                    _buildServiceSection(),
                    const SizedBox(height: 24),
                    _buildPortfolioSection(),
                    const SizedBox(height: 24),
                    _buildReviewSection(),
                    const SizedBox(height: 64),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 16,
        right: 16,
        bottom: 8,
      ),
      decoration: const BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset('assets/logo.png'),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: 'Cari...',
                    hintStyle: TextStyle(color: Colors.white70),
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 16,
                    ),
                    filled: false,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Image.asset(
                  AppIcons.settings,
                  color: Colors.white,
                  width: 32,
                  height: 32,
                ),
                onPressed: () {
                  _handleAuthenticatedAction(
                    action: () => context.pushNamed('setting'),
                    actionName: 'mengakses pengaturan',
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenuRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildMenuCircle(
            icon: AppMenu.layanan,
            label: 'Layanan',
            onTap: () => context.pushNamed('layanan'),
          ),
          _buildMenuCircle(
            icon: AppMenu.portofolio,
            label: 'Portofolio',
            onTap: () => context.pushNamed('portofolio'),
          ),
          _buildMenuCircle(
            icon: AppMenu.tim,
            label: 'Tim',
            onTap: () => context.pushNamed('tim'),
          ),
          _buildMenuCircle(
            icon: AppMenu.pesanan,
            label: 'Pesanan',
            onTap: () => _handleAuthenticatedAction(
              action: () => context.pushNamed('pesanan'),
              actionName: 'melihat pesanan',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuCircle({
    required String icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.pink[50],
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              icon,
              color: Colors.pink,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xff2F2B3D),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAboutUsCard() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Tentang Kami',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Dewa Management adalah penyedia jasa wedding organizer profesional yang berdedikasi untuk menciptakan momen pernikahan yang tak terlupakan. Dengan pengalaman dan keahlian kami, kami berkomitmen untuk menghadirkan sentuhan elegan dalam setiap detail pernikahan Anda.',
                style: TextStyle(
                  height: 1.5,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServiceSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Layanan Kami',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                onPressed: () => context.goNamed('layanan'),
                child: const Text('Lihat Selengkapnya'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 400,
          child: BlocBuilder<ServiceCubit, ServiceState>(
            bloc: _serviceCubit,
            builder: (context, state) {
              if (state is ServiceLoading) {
                return _buildLayananShimmer();
              } else if (state is ServiceSuccess) {
                final services = state.services;
                if (services.isEmpty) {
                  return const Center(
                    child: Text('Tidak ada layanan yang tersedia'),
                  );
                }
                return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return _buildServiceCard(services[index]);
                  },
                );
              } else if (state is ServiceError) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 48,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        state.message,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.red),
                      ),
                      TextButton(
                        onPressed: () => _serviceCubit.getServices(),
                        child: const Text('Coba Lagi'),
                      ),
                    ],
                  ),
                );
              }
              return _buildLayananShimmer();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildLayananShimmer() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: 280,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        );
      },
    );
  }

  Widget _buildServiceCard(CatalogModel service) {
    return Container(
      width: 280,
      margin: const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 2),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.network(
                'https://wo.flutteriam.com${service.image}',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 150,
                    color: Colors.pink[100],
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.image,
                      size: 50,
                      color: Colors.pink[300],
                    ),
                  );
                },
                height: 150,
                width: double.infinity,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      service.type,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      service.description,
                      style: const TextStyle(
                        fontSize: 12,
                        height: 1.4,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    if (service.features.isNotEmpty)
                      ...service.features.take(2).map((feature) => Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Row(
                              children: [
                                const Text(
                                  '✓',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    feature,
                                    style: const TextStyle(fontSize: 12),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    if (service.features.length > 2)
                      Text(
                        '+ ${service.features.length - 2} item lainnya',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => _handleAuthenticatedAction(
                          action: () => context.push(
                            '/pesanan/form',
                            extra: service,
                          ),
                          actionName: 'memesan layanan',
                        ),
                        child: const Text('Pilih Layanan'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPortfolioSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Portofolio Kami',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                onPressed: () => context.goNamed('portofolio'),
                child: const Text('Lihat Selengkapnya'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 240,
          child: BlocBuilder<PortfolioCubit, PortfolioState>(
            bloc: _portfolioCubit,
            builder: (context, state) {
              if (state is PortfolioLoading) {
                return _buildPortofolioShimmer();
              } else if (state is PortfolioSuccess) {
                final portfolios = state.portfolios;
                if (portfolios.isEmpty) {
                  return const Center(
                    child: Text('Tidak ada portofolio yang tersedia'),
                  );
                }
                return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  itemCount: portfolios.length,
                  itemBuilder: (context, index) {
                    return _buildPortfolioCard(portfolios[index]);
                  },
                );
              } else if (state is PortfolioError) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 48,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        state.message,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.red),
                      ),
                      TextButton(
                        onPressed: () => _portfolioCubit.getPortfolios(),
                        child: const Text('Coba Lagi'),
                      ),
                    ],
                  ),
                );
              }
              return _buildPortofolioShimmer();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPortofolioShimmer() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: 220,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPortfolioCard(PortfolioModel portfolio) {
    return GestureDetector(
      onTap: () => context.push('/portofolio/${portfolio.id}'),
      child: Container(
        width: 220,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Image.network(
                  'https://wo.flutteriam.com${portfolio.images.first.imagePath}',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 150,
                      color: Colors.pink[100],
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.image,
                        size: 50,
                        color: Colors.pink[300],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      portfolio.title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      portfolio.description,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReviewSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Ulasan',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 220,
          child: BlocBuilder<ReviewCubit, ReviewState>(
            bloc: _reviewCubit,
            builder: (context, state) {
              if (state is ReviewLoading) {
                return _buildReviewShimmer();
              } else if (state is ReviewSuccess) {
                final reviews = state.reviews;
                if (reviews.isEmpty) {
                  return const Center(
                    child: Text('Tidak ada ulasan yang tersedia'),
                  );
                }
                return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  itemCount: reviews.length,
                  itemBuilder: (context, index) {
                    return _buildReviewCard(reviews[index]);
                  },
                );
              } else if (state is ReviewError) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 48,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        state.message,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.red),
                      ),
                      TextButton(
                        onPressed: () => _reviewCubit.getReviews(),
                        child: const Text('Coba Lagi'),
                      ),
                    ],
                  ),
                );
              }
              return _buildReviewShimmer();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildReviewShimmer() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: 300,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        );
      },
    );
  }

  Widget _buildReviewCard(ReviewModel review) {
    return Container(
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 2),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.pink[100],
                    child: Text(
                      review.userName.substring(0, 1),
                      style: const TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          review.userName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              review.rating.toString(),
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Expanded(
                child: Text(
                  review.review,
                  style: const TextStyle(
                    fontSize: 13,
                    height: 1.4,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Diulas pada: ${review.date}',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
