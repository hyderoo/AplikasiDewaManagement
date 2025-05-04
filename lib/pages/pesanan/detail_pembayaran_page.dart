import 'package:dewa_wo_app/models/pesanan_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class DetailPembayaranPage extends StatefulWidget {
  final PesananModel pesanan;
  const DetailPembayaranPage({super.key, required this.pesanan});

  @override
  State<DetailPembayaranPage> createState() => _DetailPembayaranPageState();
}

class _DetailPembayaranPageState extends State<DetailPembayaranPage> {
  String _selectedBank = 'BCA Virtual Account';
  int _hours = 23;
  int _minutes = 58;
  int _seconds = 18;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_seconds > 0) {
          _seconds--;
        } else {
          if (_minutes > 0) {
            _minutes--;
            _seconds = 59;
          } else {
            if (_hours > 0) {
              _hours--;
              _minutes = 59;
              _seconds = 59;
            } else {
              timer.cancel();
            }
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Pembayaran'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCountdownCard(),
            const SizedBox(height: 16),
            _buildMetodePembayaran(),
            const SizedBox(height: 16),
            _buildVirtualAccountInfo(),
            const SizedBox(height: 24),
            _buildActionButtons(),
            const SizedBox(height: 64),
          ],
        ),
      ),
    );
  }

  Widget _buildCountdownCard() {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Selesaikan pembayaran dalam',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '${_hours.toString().padLeft(2, '0')}:${_minutes.toString().padLeft(2, '0')}:${_seconds.toString().padLeft(2, '0')}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Paket',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Text(
                    'Paket Pernikahan Lengkap',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Tanggal Booking',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Text(
                    '11 Maret 2025',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetodePembayaran() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Metode Pembayaran',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          _buildBankOption(
            'BCA Virtual Account',
            'assets/images/bca.png',
            'BCA Virtual Account',
          ),
          const SizedBox(height: 12),
          _buildBankOption(
            'Mandiri Virtual Account',
            'assets/images/mandiri.png',
            'Mandiri Virtual Account',
          ),
          const SizedBox(height: 12),
          _buildBankOption(
            'BNI Virtual Account',
            'assets/images/bni.png',
            'BNI Virtual Account',
          ),
          const SizedBox(height: 12),
          _buildBankOption(
            'BRI Virtual Account',
            'assets/images/bri.png',
            'BRI Virtual Account',
          ),
        ],
      ),
    );
  }

  Widget _buildBankOption(String value, String logoPath, String title) {
    bool isSelected = _selectedBank == value;

    return InkWell(
      onTap: () {
        setState(() {
          _selectedBank = value;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.pink,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: Image.asset(
                isSelected ? 'assets/checked.png' : 'assets/unchecked.png',
              ),
            ),
            const SizedBox(width: 16),
            Container(
              width: 60,
              height: 20,
              color: Colors.transparent,
              alignment: Alignment.centerLeft,
              child: Text(
                value.split(' ')[0],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVirtualAccountInfo() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nomor Virtual Account',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    '82771627899172563',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.copy, color: Colors.grey[700]),
                  onPressed: () {
                    Clipboard.setData(
                        const ClipboardData(text: '82771627899172563'));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Nomor VA berhasil disalin'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                ),
              ],
            ),
            Text(
              'Cara Pembayaran:',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 8),
            _buildCaraPembayaranStep(
                '1. Buka aplikasi m-banking BCA Virtual Account'),
            _buildCaraPembayaranStep(
                '2. Pilih menu "Transfer" atau "Pembayaran"'),
            _buildCaraPembayaranStep('3. Pilih "Virtual Account"'),
            _buildCaraPembayaranStep(
                '4. Masukkan nomor Virtual Account di atas'),
            _buildCaraPembayaranStep('5. Periksa detail pembayaran'),
            _buildCaraPembayaranStep('6. Masukkan PIN untuk konfirmasi'),
            _buildCaraPembayaranStep('7. Pembayaran selesai'),
            const SizedBox(height: 8),
            _buildTotalTagihan(),
          ],
        ),
      ),
    );
  }

  Widget _buildCaraPembayaranStep(String step) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Text(
        step,
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget _buildTotalTagihan() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF9D2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total Tagihan Anda:',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Rp 75.000.000',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey[300]!),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                'Batal',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'Sudah Bayar',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
