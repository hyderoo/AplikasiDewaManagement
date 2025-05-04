import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Kebijakan Privasi',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    const Icon(
                      Icons.privacy_tip,
                      size: 56,
                      color: Colors.pink,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Kebijakan Privasi',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Terakhir diperbarui: 1 Mei 2025',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              _buildSectionTitle('Pengantar'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Dewa Wedding Organizer menghargai privasi Anda dan berkomitmen untuk melindungi data pribadi Anda. Kebijakan Privasi ini menjelaskan bagaimana kami mengumpulkan, menggunakan, dan melindungi informasi Anda saat Anda menggunakan aplikasi kami.'),
              _buildParagraph(
                  'Dengan menggunakan aplikasi kami, Anda menyetujui praktik yang dijelaskan dalam kebijakan ini. Jika Anda tidak setuju, mohon untuk tidak menggunakan layanan kami.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Informasi Yang Kami Kumpulkan'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Kami mengumpulkan beberapa jenis informasi dari pengguna aplikasi kami:'),
              _buildBulletPoint(
                  'Informasi identitas (nama, email, nomor telepon)'),
              _buildBulletPoint('Informasi kontak darurat'),
              _buildBulletPoint('Preferensi pernikahan dan detail acara'),
              _buildBulletPoint('Informasi pembayaran'),
              _buildBulletPoint('Informasi penggunaan aplikasi'),
              _buildBulletPoint('Lokasi perangkat (opsional)'),
              const SizedBox(height: 24),
              _buildSectionTitle('Bagaimana Kami Menggunakan Informasi Anda'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Kami menggunakan informasi yang dikumpulkan untuk:'),
              _buildBulletPoint(
                  'Memfasilitasi dan mengelola layanan wedding organizer'),
              _buildBulletPoint('Memproses pembayaran dan transaksi'),
              _buildBulletPoint('Berkomunikasi dengan Anda tentang acara Anda'),
              _buildBulletPoint('Meningkatkan layanan dan pengalaman pengguna'),
              _buildBulletPoint(
                  'Mengirimkan pembaruan dan informasi terkait layanan'),
              _buildBulletPoint('Mematuhi kewajiban hukum'),
              const SizedBox(height: 24),
              _buildSectionTitle('Berbagi Informasi Dengan Pihak Ketiga'),
              const SizedBox(height: 8),
              _buildParagraph('Kami dapat membagikan informasi dengan:'),
              _buildBulletPoint(
                  'Vendor dan mitra layanan untuk acara pernikahan Anda'),
              _buildBulletPoint(
                  'Penyedia layanan pembayaran untuk memproses transaksi'),
              _buildBulletPoint(
                  'Penyedia layanan teknis yang membantu pengoperasian aplikasi'),
              _buildBulletPoint('Otoritas hukum jika diwajibkan oleh hukum'),
              _buildParagraph(
                  'Kami tidak akan menjual atau menyewakan informasi pribadi Anda kepada pihak ketiga untuk tujuan pemasaran tanpa persetujuan eksplisit Anda.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Keamanan Data'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Kami mengimplementasikan tindakan keamanan teknis dan organisasi yang sesuai untuk melindungi data Anda dari akses tidak sah, perubahan, pengungkapan, atau penghancuran.'),
              _buildParagraph(
                  'Namun, perlu diingat bahwa tidak ada metode transmisi internet atau metode penyimpanan elektronik yang sepenuhnya aman. Meskipun kami berusaha untuk melindungi informasi pribadi Anda, kami tidak dapat menjamin keamanan absolutnya.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Hak-Hak Pengguna'),
              const SizedBox(height: 8),
              _buildParagraph('Anda memiliki hak untuk:'),
              _buildBulletPoint(
                  'Mengakses dan mendapatkan salinan informasi Anda'),
              _buildBulletPoint('Mengoreksi informasi yang tidak akurat'),
              _buildBulletPoint(
                  'Menghapus informasi Anda (dalam keadaan tertentu)'),
              _buildBulletPoint('Membatasi pengolahan informasi Anda'),
              _buildBulletPoint(
                  'Mendapatkan informasi Anda dalam format yang dapat dibaca mesin'),
              _buildBulletPoint(
                  'Menolak penggunaan data Anda untuk tujuan tertentu'),
              _buildParagraph(
                  'Untuk menggunakan hak-hak ini, silakan hubungi kami melalui kontak yang tersedia di bagian akhir kebijakan ini.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Retensi Data'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Kami akan menyimpan informasi pribadi Anda selama diperlukan untuk memenuhi tujuan yang diuraikan dalam Kebijakan Privasi ini, kecuali jika periode penyimpanan yang lebih lama diperlukan atau diizinkan oleh hukum.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Cookie dan Teknologi Serupa'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Aplikasi kami dapat menggunakan cookie dan teknologi serupa untuk meningkatkan pengalaman pengguna, menganalisis penggunaan aplikasi, dan personalisasi konten. Anda dapat mengatur perangkat Anda untuk menolak beberapa cookie, namun ini dapat memengaruhi fungsionalitas aplikasi.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Perubahan Pada Kebijakan Privasi'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Kami dapat memperbarui Kebijakan Privasi ini dari waktu ke waktu untuk mencerminkan perubahan pada praktik informasi kami. Kami akan memberi tahu Anda tentang perubahan materi dengan memposting kebijakan baru dan memperbarui tanggal "Terakhir diperbarui" di bagian atas.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Kontak Kami'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Jika Anda memiliki pertanyaan atau masalah tentang Kebijakan Privasi ini atau praktik data kami, silakan hubungi kami di:'),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildContactInfo('Email', 'privacy@dewaorganizer.com'),
                    const SizedBox(height: 8),
                    _buildContactInfo('Telepon', '+62 812 3456 7890'),
                    const SizedBox(height: 8),
                    _buildContactInfo(
                        'Alamat', 'Jl. Pemimpi No. 123, Surabaya, Indonesia'),
                  ],
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.pink[800],
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          height: 1.5,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6),
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
              color: Colors.pink,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                height: 1.5,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.pink[700],
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
