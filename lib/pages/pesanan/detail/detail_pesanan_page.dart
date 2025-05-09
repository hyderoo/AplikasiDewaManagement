import 'package:dewa_wo_app/models/pesanan_model.dart';
import 'package:dewa_wo_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailPesananPage extends StatefulWidget {
  final PesananModel pesanan;

  const DetailPesananPage({super.key, required this.pesanan});

  @override
  State<DetailPesananPage> createState() => _DetailPesananPageState();
}

class _DetailPesananPageState extends State<DetailPesananPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Detail Pesanan'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Card(
                child: Column(
                  children: [
                    _buildHeader(widget.pesanan),
                    _buildDetailInfo(widget.pesanan),
                    _buildLayananTermasuk(widget.pesanan),
                  ],
                ),
              ),
            ),
            if (widget.pesanan.status == 'Menunggu Pembayaran')
              _buildPaymentButton(),
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

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                pesanan.userName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(8),
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
          const SizedBox(height: 4),
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
      padding: const EdgeInsets.all(16).copyWith(top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                AppIcons.date,
                height: 20,
                color: Colors.grey[600],
              ),
              const SizedBox(width: 8),
              Text(
                pesanan.tanggal,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Image.asset(
                AppIcons.dollar,
                height: 20,
                color: Colors.grey[600],
              ),
              const SizedBox(width: 8),
              Text(
                pesanan.totalHarga.toString(),
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Image.asset(
                AppIcons.location,
                height: 20,
                color: Colors.grey[600],
              ),
              const SizedBox(width: 8),
              Text(
                pesanan.lokasi,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Image.asset(
                AppIcons.users,
                height: 20,
                color: Colors.grey[600],
              ),
              const SizedBox(width: 8),
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Layanan Termasuk',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          ...pesanan.layananTermasuk.map((layanan) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.check, size: 16, color: Colors.grey[600]),
                    const SizedBox(width: 8),
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
              )),
        ],
      ),
    );
  }

  Widget _buildPaymentButton() {
    return Container(
      padding: const EdgeInsets.all(16).copyWith(top: 0),
      child: ElevatedButton(
        onPressed: () {
          context.push('/pesanan/bayar', extra: widget.pesanan);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Row(
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
