import 'package:dewa_wo_app/pages/portfolio/cubit/portfolio_cubit.dart';
import 'package:dewa_wo_app/pages/layanan/cubit/service_cubit.dart';
import 'package:dewa_wo_app/cubits/review/review_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/components.dart';

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
    _portfolioCubit = context.read<PortfolioCubit>();
    _serviceCubit = context.read<ServiceCubit>();
    _reviewCubit = context.read<ReviewCubit>();
    _loadData();
  }

  Future<void> _loadData() async {
    _portfolioCubit.getPortfolios();
    _serviceCubit.getServices();
    _reviewCubit.getReviews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: WhatsappWidget(),
      body: Column(
        children: [
          HeaderWidget(),
          Expanded(
            child: RefreshIndicator(
              onRefresh: _loadData,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    MenuWidget(),
                    const SizedBox(height: 24),
                    AboutUsWidget(),
                    const SizedBox(height: 24),
                    ServiceWidget(),
                    const SizedBox(height: 24),
                    PortfolioWidget(),
                    const SizedBox(height: 24),
                    ReviewWidget(),
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
}
