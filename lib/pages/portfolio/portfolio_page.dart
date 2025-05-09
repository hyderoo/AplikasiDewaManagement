import 'package:cached_network_image/cached_network_image.dart';
import 'package:dewa_wo_app/core/consts/app_consts.dart';
import 'package:dewa_wo_app/cubits/portfolio/portfolio_cubit.dart';
import 'package:dewa_wo_app/models/portfolio_model.dart';
import 'package:dewa_wo_app/pages/portfolio/portfolio_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  bool _isSearchMode = false;
  final TextEditingController _searchController = TextEditingController();
  String _selectedCategory = 'Semua Acara';
  final List<String> _categories = [
    "Semua Acara",
    "Pernikahan Adat",
    "Pernikahan Modern",
    "Intimate Wedding",
    "Destination Wedding",
  ];

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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.pink,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: _buildHeader(),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 60),
          _buildCategoryList(),
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
                  return _buildShimmerList();
                } else if (state is PortfolioSuccess) {
                  return RefreshIndicator(
                    onRefresh: () => _portfolioCubit.getPortfolios(),
                    child: _filteredPortfolios.isEmpty
                        ? _buildEmptyStateWithRefresh()
                        : _buildPortofolioList(),
                  );
                } else if (state is PortfolioError) {
                  return _buildErrorState(state.message);
                }

                return _buildShimmerList();
              },
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
      ),
      child: _isSearchMode
          ? Row(
              children: [
                BackButton(
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      _isSearchMode = false;
                      _searchController.clear();

                      // Reset search when exiting search mode
                      if (_portfolioCubit.state is PortfolioSuccess) {
                        final portfolios =
                            (_portfolioCubit.state as PortfolioSuccess)
                                .portfolios;
                        _filterPortofolio(portfolios, _selectedCategory);
                      }
                    });
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      hintText: 'Cari portofolio...',
                      hintStyle: TextStyle(color: Colors.white70),
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
                    onChanged: (query) {
                      if (_portfolioCubit.state is PortfolioSuccess) {
                        final portfolios =
                            (_portfolioCubit.state as PortfolioSuccess)
                                .portfolios;
                        _searchPortofolio(portfolios, query);
                      }
                    },
                    autofocus: true,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.clear, color: Colors.white),
                  onPressed: () {
                    _searchController.clear();
                    if (_portfolioCubit.state is PortfolioSuccess) {
                      final portfolios =
                          (_portfolioCubit.state as PortfolioSuccess)
                              .portfolios;
                      _searchPortofolio(portfolios, '');
                    }
                  },
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(
                  color: Colors.white,
                  onPressed: () => context.pop(),
                ),
                const Text(
                  'Portofolio Kami',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      _isSearchMode = true;
                    });
                  },
                ),
              ],
            ),
    );
  }

  Widget _buildCategoryList() {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          final category = _categories[index];
          final isSelected = category == _selectedCategory;

          return GestureDetector(
            onTap: () {
              if (_portfolioCubit.state is PortfolioSuccess) {
                final portfolios =
                    (_portfolioCubit.state as PortfolioSuccess).portfolios;
                _filterPortofolio(portfolios, category);
              }
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: isSelected ? Colors.pink[50] : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isSelected ? Colors.pink[50]! : Colors.grey[400]!,
                  width: 1,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                category,
                style: TextStyle(
                  color: isSelected ? Colors.pink[700] : Colors.grey[700],
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildShimmerList() {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyStateWithRefresh() {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.photo_album_outlined,
                  size: 80,
                  color: Colors.grey[400],
                ),
                const SizedBox(height: 16),
                Text(
                  'Tidak ada portofolio yang ditemukan',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Coba pilih kategori lain atau ubah kata kunci pencarian',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Text(
                  'Tarik ke bawah untuk menyegarkan',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildErrorState(String message) {
    return RefreshIndicator(
      onRefresh: () => _portfolioCubit.getPortfolios(),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 80,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Terjadi kesalahan',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      message,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => _portfolioCubit.getPortfolios(),
                    child: const Text('Coba Lagi'),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'atau tarik ke bawah untuk menyegarkan',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[500],
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPortofolioList() {
    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16).copyWith(bottom: 64),
      itemCount: _filteredPortfolios.length,
      itemBuilder: (context, index) {
        return _buildPortofolioCard(_filteredPortfolios[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 16);
      },
    );
  }

  Widget _buildPortofolioCard(PortfolioModel portfolio) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PortfolioDetailPage(portfolio: portfolio),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageGallery(portfolio.images),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    portfolio.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      portfolio.category,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.pink[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    portfolio.description,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.5,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageGallery(List<PortfolioImage> images) {
    final imagesToShow = images.length > 3 ? images.sublist(0, 3) : images;

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      child: SizedBox(
        height: 200,
        child: imagesToShow.isEmpty
            ? Container(
                width: double.infinity,
                color: Colors.pink[100],
                alignment: Alignment.center,
                child: Icon(Icons.image, size: 40, color: Colors.pink[300]),
              )
            : imagesToShow.length == 1
                ? CachedNetworkImage(
                    imageUrl:
                        '${AppConsts.baseUrl}${imagesToShow[0].imagePath}',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      color: Colors.grey[200],
                      child: Center(
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.pink),
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                      width: double.infinity,
                      color: Colors.pink[100],
                      alignment: Alignment.center,
                      child:
                          Icon(Icons.image, size: 40, color: Colors.pink[300]),
                    ),
                  )
                : Row(
                    children: [
                      for (int i = 0; i < imagesToShow.length; i++)
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                right: i < imagesToShow.length - 1 ? 2 : 0),
                            child: CachedNetworkImage(
                              imageUrl:
                                  '${AppConsts.baseUrl}${imagesToShow[i].imagePath}',
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Container(
                                color: Colors.grey[200],
                                child: Center(
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.pink),
                                    ),
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) => Container(
                                color: Colors.pink[100],
                                alignment: Alignment.center,
                                child: Icon(Icons.image,
                                    size: 40, color: Colors.pink[300]),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
      ),
    );
  }
}
