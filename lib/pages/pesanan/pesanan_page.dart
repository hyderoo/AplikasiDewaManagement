import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:intl/intl.dart';

class PesananPage extends StatefulWidget {
  const PesananPage({Key? key}) : super(key: key);

  @override
  _PesananPageState createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  bool _isSearchMode = false;
  TextEditingController _searchController = TextEditingController();
  String _selectedStatus = 'Semua';
  List<String> _statusList = ['Semua', 'Lunas', 'Menunggu Pembayaran'];
  bool _isLoading = true;

  // Data pesanan
  List<PesananModel> pesananData = [
    PesananModel(
      id: '1',
      userName: 'Andi & Maya',
      paketName: 'Paket Intimate Wedding',
      status: 'Lunas',
      tanggal: '15 April 2025',
      totalHarga: 32000000,
      detailPesanan: [
        'Venue untuk 100 tamu',
        'Dekorasi pelaminan',
        'Catering untuk 100 orang',
        'MC & Entertainment',
        'Dokumentasi foto & video',
      ],
      buktiPembayaran: 'assets/images/bukti_pembayaran1.jpg',
      tanggalPembayaran: '10 Januari 2025',
    ),
    PesananModel(
      id: '2',
      userName: 'Budi & Sinta',
      paketName: 'Paket Medium Wedding',
      status: 'Menunggu Pembayaran',
      tanggal: '28 Februari 2025',
      totalHarga: 55000000,
      detailPesanan: [
        'Venue untuk 300 tamu',
        'Dekorasi pelaminan premium',
        'Catering untuk 300 orang',
        'MC, Entertainment & Band',
        'Dokumentasi foto & video',
        'Makeup & Busana pengantin',
      ],
      buktiPembayaran: '',
      tanggalPembayaran: '',
    ),
    PesananModel(
      id: '3',
      userName: 'Reza & Dina',
      paketName: 'Paket Luxury Wedding',
      status: 'Lunas',
      tanggal: '10 Januari 2025',
      totalHarga: 120000000,
      detailPesanan: [
        'Venue mewah untuk 500 tamu',
        'Dekorasi pelaminan eksklusif',
        'Catering premium untuk 500 orang',
        'MC, Entertainment & Live Music',
        'Dokumentasi foto & video cinematic',
        'Makeup & Busana pengantin high-end',
        'Wedding car & Koordinator acara',
      ],
      buktiPembayaran: 'assets/images/bukti_pembayaran3.jpg',
      tanggalPembayaran: '5 November 2024',
    ),
    PesananModel(
      id: '4',
      userName: 'Denny & Lina',
      paketName: 'Paket Dokumentasi Premium',
      status: 'Menunggu Pembayaran',
      tanggal: '5 Maret 2025',
      totalHarga: 18000000,
      detailPesanan: [
        'Pre-wedding photoshoot',
        'Wedding day photography',
        'Wedding day videography',
        'Drone aerial shots',
        'Same day edit video',
      ],
      buktiPembayaran: '',
      tanggalPembayaran: '',
    ),
    PesananModel(
      id: '5',
      userName: 'Johan & Nisa',
      paketName: 'Paket Dekorasi Eksklusif',
      status: 'Lunas',
      tanggal: '20 Desember 2024',
      totalHarga: 25000000,
      detailPesanan: [
        'Dekorasi pelaminan mewah',
        'Dekorasi area masuk',
        'Dekorasi area foto',
        'Fresh flowers arrangement',
        'Stage & lighting',
      ],
      buktiPembayaran: 'assets/images/bukti_pembayaran5.jpg',
      tanggalPembayaran: '15 Oktober 2024',
    ),
  ];

  List<PesananModel> _filteredPesanan = [];

  @override
  void initState() {
    super.initState();
    _filteredPesanan = pesananData;

    // Mengatur status bar transparan dan warna ikon status bar putih
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    // Simulasi loading data
    Future.delayed(Duration(seconds: 2), () {
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
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.pink,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: _buildHeader(),
        ),
      ),
      body: Column(
        children: [
          // Spacer untuk memastikan konten di bawah AppBar
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implementasi tambah pesanan baru
        },
        backgroundColor: Colors.pink,
        child: Icon(Icons.add),
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
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
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
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Cari pesanan...',
                      hintStyle: TextStyle(color: Colors.white70),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    onChanged: _searchPesanan,
                    autofocus: true,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.clear, color: Colors.white),
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
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => context.pop(),
                ),
                Text(
                  'Pesanan Saya',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
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
      padding: EdgeInsets.symmetric(vertical: 12),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 12),
        itemCount: _statusList.length,
        itemBuilder: (context, index) {
          final status = _statusList[index];
          final isSelected = status == _selectedStatus;

          return GestureDetector(
            onTap: () => _filterPesanan(status),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: isSelected ? Colors.pink[50] : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected ? Colors.pink : Colors.grey[400]!,
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              margin: EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
            );
          },
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
          SizedBox(height: 16),
          Text(
            'Tidak ada pesanan yang ditemukan',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
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
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: _filteredPesanan.length,
      itemBuilder: (context, index) {
        return _buildPesananCard(_filteredPesanan[index]);
      },
    );
  }

  Widget _buildPesananCard(PesananModel pesanan) {
    // Warna status
    Color statusColor =
        pesanan.status == 'Lunas' ? Colors.green : Colors.orange;

    // Format harga
    final formatCurrency = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );
    final formattedHarga = formatCurrency.format(pesanan.totalHarga);

    return Card(
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      shadowColor: Colors.pink[100],
      child: InkWell(
        onTap: () => _showPesananDetail(pesanan),
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pesanan.userName,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          pesanan.paketName,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.pink,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: statusColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      pesanan.status,
                      style: TextStyle(
                        color: statusColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 16, color: Colors.grey[600]),
                  SizedBox(width: 4),
                  Text(
                    pesanan.tanggal,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.monetization_on,
                      size: 16, color: Colors.grey[600]),
                  SizedBox(width: 4),
                  Text(
                    formattedHarga,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => _showPesananDetail(pesanan),
                      borderRadius: BorderRadius.circular(4),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.visibility,
                                size: 16, color: Colors.pink),
                            SizedBox(width: 4),
                            Text(
                              'Lihat Detail',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 1,
                    color: Colors.grey[300],
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // Implementasi hubungi admin
                      },
                      borderRadius: BorderRadius.circular(4),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.support_agent,
                                size: 16, color: Colors.blue),
                            SizedBox(width: 4),
                            Text(
                              'Hubungi Admin',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPesananDetail(PesananModel pesanan) {
    // Format harga
    final formatCurrency = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );
    final formattedHarga = formatCurrency.format(pesanan.totalHarga);

    // Warna status
    Color statusColor =
        pesanan.status == 'Lunas' ? Colors.green : Colors.orange;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.75,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.receipt, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'Detail Pesanan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),

            // Konten
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header info
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pesanan.userName,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                pesanan.paketName,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.calendar_today,
                                      size: 16, color: Colors.grey[600]),
                                  SizedBox(width: 4),
                                  Text(
                                    'Tanggal Acara: ${pesanan.tanggal}',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: statusColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            pesanan.status,
                            style: TextStyle(
                              color: statusColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Divider(height: 32),

                    // Informasi biaya
                    Text(
                      'Informasi Biaya',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Biaya',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            formattedHarga,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Status pembayaran
                    SizedBox(height: 24),
                    Text(
                      'Status Pembayaran',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: statusColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: statusColor.withOpacity(0.3),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                pesanan.status == 'Lunas'
                                    ? Icons.check_circle
                                    : Icons.pending,
                                color: statusColor,
                              ),
                              SizedBox(width: 8),
                              Text(
                                pesanan.status,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: statusColor,
                                ),
                              ),
                            ],
                          ),
                          if (pesanan.status == 'Lunas') ...[
                            SizedBox(height: 8),
                            Text(
                              'Dibayar pada: ${pesanan.tanggalPembayaran}',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                          if (pesanan.status == 'Menunggu Pembayaran') ...[
                            SizedBox(height: 16),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Implementasi upload bukti pembayaran
                                },
                                child: Text('Upload Bukti Pembayaran'),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),

                    // Detail paket
                    SizedBox(height: 24),
                    Text(
                      'Detail Paket',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.pink[50],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pesanan.paketName,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink[700],
                            ),
                          ),
                          SizedBox(height: 8),
                          ...pesanan.detailPesanan.map((item) => Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.check_circle,
                                        size: 16, color: Colors.pink[300]),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        item,
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),

                    // Tombol aksi
                    SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              // Implementasi hubungi admin
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.pink),
                              padding: EdgeInsets.symmetric(vertical: 12),
                            ),
                            child: Text('Hubungi Admin'),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // Implementasi jadwalkan konsultasi
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 12),
                            ),
                            child: Text('Jadwalkan Konsultasi'),
                          ),
                        ),
                      ],
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
}

// Model Data
class PesananModel {
  final String id;
  final String userName;
  final String paketName;
  final String status;
  final String tanggal;
  final int totalHarga;
  final List<String> detailPesanan;
  final String buktiPembayaran;
  final String tanggalPembayaran;

  PesananModel({
    required this.id,
    required this.userName,
    required this.paketName,
    required this.status,
    required this.tanggal,
    required this.totalHarga,
    required this.detailPesanan,
    required this.buktiPembayaran,
    required this.tanggalPembayaran,
  });
}
