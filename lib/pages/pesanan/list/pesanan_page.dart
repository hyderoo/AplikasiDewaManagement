import 'package:dewa_wo_app/models/pesanan_model.dart';
import 'package:dewa_wo_app/pages/pesanan/list/pesanan_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class PesananPage extends StatefulWidget {
  const PesananPage({super.key});

  @override
  State<PesananPage> createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  bool _isSearchMode = false;
  final TextEditingController _searchController = TextEditingController();
  String _selectedStatus = 'Semua';
  final List<String> _statusList = ['Semua', 'Lunas', 'Menunggu Pembayaran'];
  bool _isLoading = true;

  List<PesananModel> _filteredPesanan = [];

  @override
  void initState() {
    super.initState();
    _filteredPesanan = pesananData;

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    });
  }

  void _filterPesanan(String status) {
    setState(() {
      _selectedStatus = status;
      if (status == 'Semua') {
        _filteredPesanan = pesananData;
      } else {
        _filteredPesanan =
            pesananData.where((pesanan) => pesanan.status == status).toList();
      }
    });
  }

  void _searchPesanan(String query) {
    if (query.isEmpty) {
      _filterPesanan(_selectedStatus);
      return;
    }

    final filteredByStatus = _selectedStatus == 'Semua'
        ? pesananData
        : pesananData
            .where((pesanan) => pesanan.status == _selectedStatus)
            .toList();

    setState(() {
      _filteredPesanan = filteredByStatus
          .where((pesanan) =>
              pesanan.userName.toLowerCase().contains(query.toLowerCase()) ||
              pesanan.paketName.toLowerCase().contains(query.toLowerCase()))
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
          _buildStatusFilterList(),
          Expanded(
            child: _isLoading
                ? _buildShimmerList()
                : _filteredPesanan.isEmpty
                    ? _buildEmptyState()
                    : _buildPesananList(),
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
                      _filterPesanan(_selectedStatus);
                    });
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      hintText: 'Cari pesanan...',
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
                    onChanged: _searchPesanan,
                    autofocus: true,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.clear, color: Colors.white),
                  onPressed: () {
                    _searchController.clear();
                    _searchPesanan('');
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
                  'Pesanan Saya',
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

  Widget _buildStatusFilterList() {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: _statusList.length,
        itemBuilder: (context, index) {
          final status = _statusList[index];
          final isSelected = status == _selectedStatus;

          return GestureDetector(
            onTap: () => _filterPesanan(status),
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
                status,
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
                height: 100,
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

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.receipt_long_outlined,
            size: 80,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 16),
          Text(
            'Tidak ada pesanan yang ditemukan',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Silakan buat pesanan baru atau ubah filter',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildPesananList() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: _filteredPesanan.length,
      itemBuilder: (context, index) {
        return PesananCard(pesanan: _filteredPesanan[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 16);
      },
    );
  }
}
