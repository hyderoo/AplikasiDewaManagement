import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class NotFoundPage extends StatelessWidget {
  final String? message;

  const NotFoundPage({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mengatur status bar transparan dan warna ikon status bar hitam
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Animasi 404 - menggunakan Lottie animation
              // Note: Untuk menggunakan ini, tambahkan lottie package:
              // 'lottie: ^1.4.3' ke pubspec.yaml
              Container(
                height: 250,
                child: Lottie.asset(
                  'assets/animations/404_animation.json',
                  repeat: true,
                  // Alternatif jika tidak ingin menggunakan Lottie:
                  // Uncomment baris di bawah dan comment baris di atas
                  // errorBuilder: (context, error, stackTrace) =>
                  //   Image.asset('assets/images/404.png'),
                ),
              ),

              // Atau, jika tidak menggunakan Lottie, gunakan Icon:
              // Icon(
              //   Icons.error_outline,
              //   size: 120,
              //   color: Colors.pink[300],
              // ),

              SizedBox(height: 32),

              // 404 text
              Text(
                '404',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),

              SizedBox(height: 16),

              // Halaman tidak ditemukan text
              Text(
                'Halaman Tidak Ditemukan',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 16),

              // Custom message (optional)
              Text(
                message ??
                    'Maaf, halaman yang Anda cari tidak tersedia atau telah dipindahkan.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 40),

              // Tombol kembali ke home
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to home page
                    // Replace with your home page navigation
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: Text(
                    'Kembali ke Beranda',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 16),

              // Alternative action button
              TextButton(
                onPressed: () {
                  // Alternative action, like refresh
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.pink,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.refresh),
                    SizedBox(width: 8),
                    Text('Kembali'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
