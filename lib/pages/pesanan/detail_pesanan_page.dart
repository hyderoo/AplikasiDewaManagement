import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailPesananPage extends StatelessWidget {
  final PesananModel pesanan;

  const DetailPesananPage({Key? key, required this.pesanan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mengatur status bar transparan dan warna ikon status bar putih
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 0,
        title: Text(
          'Detail Pesanan',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(pesanan),
            _buildDetailInfo(pesanan),
            _buildLayananTermasuk(pesanan),
            if (pesanan.status == 'Menunggu Pembayaran') _buildPaymentButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(PesananModel pesanan) {
    Color statusColor = pesanan.status == 'Lunas'
        ? Colors.green.shade100
        : Colors.orange.shade100;

    Color statusTextColor = pesanan.status == 'Lunas'
        ? Colors.green.shade700
        : Colors.orange.shade700;

    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                pesanan.userName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  pesanan.status,
                  style: TextStyle(
                    color: statusTextColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            pesanan.paketName,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailInfo(PesananModel pesanan) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.calendar_today, size: 20, color: Colors.grey[600]),
              SizedBox(width: 8),
              Text(
                pesanan.tanggal,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.monetization_on, size: 20, color: Colors.grey[600]),
              SizedBox(width: 8),
              Text(
                pesanan.harga,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.location_on, size: 20, color: Colors.grey[600]),
              SizedBox(width: 8),
              Text(
                pesanan.lokasi,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.people, size: 20, color: Colors.grey[600]),
              SizedBox(width: 8),
              Text(
                pesanan.estimasiTamu,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLayananTermasuk(PesananModel pesanan) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Layanan Termasuk',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8),
          ...pesanan.layananTermasuk
              .map((layanan) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.check, size: 16, color: Colors.grey[600]),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            layanan,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[800],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }

  Widget _buildPaymentButton() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {
          // Implementasi bayar sekarang
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          padding: EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bayar Sekarang',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
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
  final String harga;
  final String lokasi;
  final String estimasiTamu;
  final List<String> layananTermasuk;

  PesananModel({
    required this.id,
    required this.userName,
    required this.paketName,
    required this.status,
    required this.tanggal,
    required this.harga,
    required this.lokasi,
    required this.estimasiTamu,
    required this.layananTermasuk,
  });
}

// Contoh Data Pesanan
final pesananLunas = PesananModel(
  id: '1',
  userName: 'Budi & Sarah',
  paketName: 'Paket Pernikahan Lengkap',
  status: 'Lunas',
  tanggal: '14 Februari 2025',
  harga: 'Rp 75.000.000',
  lokasi: 'Grand Ballroom Hotel Mulia',
  estimasiTamu: 'Estimasi Tamu 500 Orang',
  layananTermasuk: [
    'Dekorasi Lengkap',
    'Katering 500 pax',
    'Dokumentasi Full',
    'Entertainment',
  ],
);

final pesananMenunggu = PesananModel(
  id: '2',
  userName: 'Budi & Sarah',
  paketName: 'Paket Pernikahan Lengkap',
  status: 'Menunggu Pembayaran',
  tanggal: '14 Februari 2025',
  harga: 'Rp 75.000.000',
  lokasi: 'Grand Ballroom Hotel Mulia',
  estimasiTamu: 'Estimasi Tamu 500 Orang',
  layananTermasuk: [
    'Dekorasi Lengkap',
    'Katering 500 pax',
    'Dokumentasi Full',
    'Entertainment',
  ],
);
