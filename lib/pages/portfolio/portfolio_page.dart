import 'package:dewa_wo_app/pages/general/empty_page.dart';
import 'package:dewa_wo_app/pages/general/error_page.dart';
import 'package:dewa_wo_app/pages/general/header_page.dart';
import 'package:dewa_wo_app/pages/general/shimmer_page.dart';
import 'package:dewa_wo_app/pages/portfolio/cubit/portfolio_cubit.dart';
import 'package:dewa_wo_app/core/models/portfolio_model.dart';
import 'package:dewa_wo_app/pages/portfolio/filter_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'portfolio_card.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  bool _isSearchMode = false;
  final TextEditingController _searchController = TextEditingController();
  String _selectedCategory = 'Semua Acara';

  late final PortfolioCubit _portfolioCubit;
  List<PortfolioModel> _filteredPortfolios = [];

  @override
  void initState() {
    super.initState();
    _portfolioCubit = context.read<PortfolioCubit>();
    _portfolioCubit.getPortfolios();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterPortofolio(List<PortfolioModel> portfolios, String category) {
    setState(() {
      _selectedCategory = category;
      if (category == 'Semua Acara') {
        _filteredPortfolios = portfolios;
      } else {
        _filteredPortfolios = portfolios
            .where((portfolio) => portfolio.category == category)
            .toList();
      }
    });
  }

  void _searchPortofolio(List<PortfolioModel> portfolios, String query) {
    if (query.isEmpty) {
      _filterPortofolio(portfolios, _selectedCategory);
      return;
    }

    final filteredByCategory = _selectedCategory == 'Semua Acara'
        ? portfolios
        : portfolios
            .where((portfolio) => portfolio.category == _selectedCategory)
            .toList();

    setState(() {
      _filteredPortfolios = filteredByCategory
          .where((portfolio) =>
              portfolio.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildHeader(
        context: context,
        isSearchMode: _isSearchMode,
        searchController: _searchController,
        title: 'Portofolio Kami',
        searchHint: 'Cari Portofolio Kami',
        backAction: () {
          setState(() {
            _isSearchMode = false;
            _searchController.clear();
            if (_portfolioCubit.state is PortfolioSuccess) {
              final portfolios =
                  (_portfolioCubit.state as PortfolioSuccess).portfolios;
              _filterPortofolio(portfolios, _selectedCategory);
            }
          });
        },
        onChangedSearch: (query) {
          if (_portfolioCubit.state is PortfolioSuccess) {
            final portfolios =
                (_portfolioCubit.state as PortfolioSuccess).portfolios;
            _searchPortofolio(portfolios, query);
          }
        },
        closePressed: () {
          _searchController.clear();
          if (_portfolioCubit.state is PortfolioSuccess) {
            final portfolios =
                (_portfolioCubit.state as PortfolioSuccess).portfolios;
            _searchPortofolio(portfolios, '');
          }
        },
        searchPressed: () => setState(() => _isSearchMode = true),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 60),
          FilterCategory(
            selectedCategory: _selectedCategory,
            onTap: (category) {
              if (_portfolioCubit.state is PortfolioSuccess) {
                final portfolios =
                    (_portfolioCubit.state as PortfolioSuccess).portfolios;
                _filterPortofolio(portfolios, category);
              }
            },
          ),
          Expanded(
            child: BlocConsumer<PortfolioCubit, PortfolioState>(
              bloc: _portfolioCubit,
              listener: (context, state) {
                if (state is PortfolioSuccess) {
                  _filterPortofolio(state.portfolios, _selectedCategory);
                }
              },
              builder: (context, state) {
                if (state is PortfolioLoading || state is PortfolioInitial) {
                  return ShimmerPage();
                } else if (state is PortfolioSuccess) {
                  return RefreshIndicator(
                    onRefresh: () => _portfolioCubit.getPortfolios(),
                    child: _filteredPortfolios.isEmpty
                        ? EmptyPage(
                            message: 'Tidak ada portofolio yang ditemukan',
                          )
                        : ListView.separated(
                            physics: const AlwaysScrollableScrollPhysics(),
                            padding:
                                const EdgeInsets.all(16).copyWith(bottom: 64),
                            itemCount: _filteredPortfolios.length,
                            itemBuilder: (context, index) {
                              return PortfolioCard(
                                  portfolio: _filteredPortfolios[index]);
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(height: 16);
                            },
                          ),
                  );
                } else if (state is PortfolioError) {
                  return ErrorPage(
                    message: state.message,
                    fetchData: () => _portfolioCubit.getPortfolios(),
                  );
                }

                return ShimmerPage();
              },
            ),
          ),
        ],
      ),
    );
  }
}
