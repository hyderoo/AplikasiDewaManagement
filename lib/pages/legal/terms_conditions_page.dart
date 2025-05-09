import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Syarat dan Ketentuan',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: BackButton(
          color: Colors.white,
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
                      Icons.gavel,
                      size: 56,
                      color: Colors.pink,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Syarat dan Ketentuan',
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
                  'Selamat datang di Dewa Wedding Organizer. Syarat dan Ketentuan ini mengatur penggunaan aplikasi dan layanan kami. Dengan mengakses atau menggunakan aplikasi Dewa Wedding Organizer, Anda menyetujui untuk terikat dengan Syarat dan Ketentuan ini.'),
              _buildParagraph(
                  'Harap baca ketentuan ini dengan seksama. Jika Anda tidak menyetujui sebagian atau seluruh ketentuan ini, mohon untuk tidak menggunakan aplikasi kami.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Definisi'),
              const SizedBox(height: 8),
              _buildParagraph('Dalam Syarat dan Ketentuan ini:'),
              _buildBulletPoint(
                  '"Aplikasi" mengacu pada aplikasi mobile Dewa Wedding Organizer'),
              _buildBulletPoint(
                  '"Layanan" mengacu pada semua layanan yang disediakan melalui aplikasi'),
              _buildBulletPoint(
                  '"Pengguna" mengacu pada individu yang mengakses atau menggunakan aplikasi'),
              _buildBulletPoint(
                  '"Konten" mengacu pada informasi, teks, grafik, foto, atau materi lain yang ditampilkan di aplikasi'),
              _buildBulletPoint(
                  '"Vendor" mengacu pada penyedia layanan pernikahan yang bekerjasama dengan kami'),
              const SizedBox(height: 24),
              _buildSectionTitle('Pendaftaran Akun'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Untuk menggunakan fitur tertentu dalam aplikasi, Anda mungkin perlu mendaftar dan membuat akun.'),
              _buildParagraph('Dengan mendaftar, Anda menyatakan bahwa:'),
              _buildBulletPoint('Anda berusia minimal 18 tahun'),
              _buildBulletPoint(
                  'Informasi yang Anda berikan adalah akurat, lengkap, dan terkini'),
              _buildBulletPoint(
                  'Anda akan menjaga kerahasiaan kata sandi akun Anda'),
              _buildBulletPoint(
                  'Anda bertanggung jawab atas semua aktivitas yang terjadi di akun Anda'),
              _buildParagraph(
                  'Kami berhak menangguhkan atau menghentikan akun Anda jika ada pelanggaran terhadap ketentuan ini.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Layanan Wedding Organizer'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Dewa Wedding Organizer menyediakan platform untuk menghubungkan Pengguna dengan layanan pernikahan. Kami berupaya memberikan informasi yang akurat, namun:'),
              _buildBulletPoint(
                  'Kami tidak bertanggung jawab atas tindakan vendor pihak ketiga'),
              _buildBulletPoint(
                  'Ketersediaan, harga, dan kualitas layanan dapat berubah'),
              _buildBulletPoint(
                  'Aplikasi dapat diperbarui atau dimodifikasi tanpa pemberitahuan'),
              _buildParagraph(
                  'Kami mendorong Pengguna untuk selalu memverifikasi detail penting secara langsung dengan vendor sebelum mengambil keputusan akhir.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Pembayaran dan Pembatalan'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Dengan melakukan pemesanan melalui aplikasi kami:'),
              _buildBulletPoint(
                  'Anda setuju untuk membayar jumlah yang disebutkan dalam konfirmasi pemesanan'),
              _buildBulletPoint(
                  'Pembayaran harus dilakukan menggunakan metode yang tersedia di aplikasi'),
              _buildBulletPoint(
                  'Deposit mungkin diperlukan untuk mengamankan pemesanan'),
              _buildParagraph('Kebijakan pembatalan:'),
              _buildBulletPoint(
                  'Pembatalan 90 hari sebelum acara: pengembalian penuh dikurangi biaya administrasi'),
              _buildBulletPoint(
                  'Pembatalan 60-89 hari sebelum acara: pengembalian 75%'),
              _buildBulletPoint(
                  'Pembatalan 30-59 hari sebelum acara: pengembalian 50%'),
              _buildBulletPoint(
                  'Pembatalan kurang dari 30 hari sebelum acara: tidak ada pengembalian dana'),
              _buildParagraph(
                  'Perubahan jadwal tergantung pada ketersediaan dan mungkin dikenakan biaya tambahan.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Hak Kekayaan Intelektual'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Aplikasi dan semua konten, fitur, dan fungsionalitas yang terkandung di dalamnya adalah milik Dewa Wedding Organizer dan dilindungi oleh hak cipta, merek dagang, paten, rahasia dagang, dan undang-undang kekayaan intelektual lainnya.'),
              _buildParagraph(
                  'Anda tidak diperbolehkan menggunakan konten aplikasi untuk tujuan komersial tanpa izin tertulis dari kami. Anda tidak boleh memodifikasi, mendistribusikan, atau merekayasa balik aplikasi atau konten apa pun.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Konten Pengguna'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Aplikasi kami mungkin memungkinkan Anda untuk mengunggah, memposting, atau mengirimkan konten seperti foto, ulasan, dan komentar. Dengan mengirimkan konten, Anda:'),
              _buildBulletPoint(
                  'Memberikan kami lisensi non-eksklusif untuk menggunakan, mereproduksi, dan menampilkan konten tersebut'),
              _buildBulletPoint(
                  'Menjamin bahwa Anda memiliki hak untuk memberikan lisensi tersebut'),
              _buildBulletPoint(
                  'Menjamin bahwa konten tidak melanggar hak pihak ketiga'),
              _buildParagraph(
                  'Kami berhak menghapus konten yang melanggar ketentuan ini atau dianggap tidak pantas.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Pembatasan Tanggung Jawab'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Sejauh diizinkan oleh hukum, Dewa Wedding Organizer tidak bertanggung jawab atas kerugian langsung, tidak langsung, insidental, khusus, atau konsekuensial yang timbul dari penggunaan aplikasi atau layanan kami.'),
              _buildParagraph(
                  'Kami tidak menjamin bahwa aplikasi akan selalu aman, bebas kesalahan, atau tersedia setiap saat. Kami dapat menghentikan atau membatasi akses ke aplikasi untuk pemeliharaan atau pembaruan.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Penyelesaian Sengketa'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Setiap sengketa yang timbul dari penggunaan aplikasi atau layanan kami akan diselesaikan melalui negosiasi dengan itikad baik. Jika sengketa tidak dapat diselesaikan melalui negosiasi, sengketa akan diselesaikan melalui arbitrase sesuai dengan hukum yang berlaku di Indonesia.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Perubahan Syarat dan Ketentuan'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Kami berhak mengubah Syarat dan Ketentuan ini kapan saja. Perubahan akan berlaku segera setelah diposting di aplikasi. Penggunaan berkelanjutan atas aplikasi setelah perubahan tersebut menunjukkan penerimaan Anda terhadap ketentuan yang direvisi.'),
              _buildParagraph(
                  'Kami akan memberi tahu Anda tentang perubahan material melalui notifikasi dalam aplikasi atau email.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Hukum yang Berlaku'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Syarat dan Ketentuan ini diatur oleh dan ditafsirkan sesuai dengan hukum Republik Indonesia, tanpa memperhatikan pertentangan prinsip hukum.'),
              const SizedBox(height: 24),
              _buildSectionTitle('Kontak Kami'),
              const SizedBox(height: 8),
              _buildParagraph(
                  'Jika Anda memiliki pertanyaan tentang Syarat dan Ketentuan ini, silakan hubungi kami di:'),
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
                    _buildContactInfo('Email', 'legal@dewaorganizer.com'),
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
