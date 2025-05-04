import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PengaturanAkunPage extends StatelessWidget {
  const PengaturanAkunPage({Key? key}) : super(key: key);

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
          'Pengaturan Akun',
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
      body: Column(
        children: [
          _buildProfileHeader(),
          Divider(height: 1, color: Colors.grey[200]),
          _buildMenuItems(context),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          // Foto Profil
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey[300],
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          SizedBox(height: 16),
          // Nama Pengguna
          Text(
            'Bambang Eko',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
          SizedBox(height: 4),
          // Email
          Text(
            'LoremIpsum@gmail.com',
            style: TextStyle(
              fontSize: 14,
              color: Colors.pink[300],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItems(BuildContext context) {
    return Column(
      children: [
        _buildMenuItem(
          icon: Icons.person_outline,
          label: 'Pengaturan Profile',
          onTap: () {
            // Navigate to profile settings page
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DummyPage('Pengaturan Profile')),
            );
          },
        ),
        Divider(height: 1, indent: 16, endIndent: 16, color: Colors.grey[200]),
        _buildMenuItem(
          icon: Icons.privacy_tip_outlined,
          label: 'Privacy Policy',
          onTap: () {
            // Navigate to privacy policy page
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DummyPage('Privacy Policy')),
            );
          },
        ),
        Divider(height: 1, indent: 16, endIndent: 16, color: Colors.grey[200]),
        _buildMenuItem(
          icon: Icons.star_outline,
          label: 'Beri Rating dan Review',
          onTap: () {
            // Show rating dialog
            _showRatingDialog(context);
          },
        ),
        Divider(height: 1, indent: 16, endIndent: 16, color: Colors.grey[200]),
        _buildMenuItem(
          icon: Icons.logout,
          label: 'Keluar',
          isLogout: true,
          onTap: () {
            // Show logout confirmation
            _showLogoutConfirmation(context);
          },
        ),
      ],
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String label,
    required Function() onTap,
    bool isLogout = false,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24,
              color: isLogout ? Colors.red : Colors.grey[700],
            ),
            SizedBox(width: 16),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isLogout ? Colors.red : Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showRatingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Beri Rating'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Berikan rating untuk aplikasi kami'),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => IconButton(
                  icon: Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onPressed: () {
                    // Handle star rating
                    Navigator.pop(context);

                    // Show thank you message
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Terima kasih atas penilaian Anda!'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Batal'),
          ),
        ],
      ),
    );
  }

  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Keluar'),
        content: Text('Apakah Anda yakin ingin keluar dari akun?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Batal'),
          ),
          TextButton(
            onPressed: () {
              // Handle logout logic
              Navigator.pop(context); // Close dialog
              Navigator.popUntil(
                  context, (route) => route.isFirst); // Back to first page
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            child: Text('Keluar'),
          ),
        ],
      ),
    );
  }
}

// Halaman dummy untuk navigasi
class DummyPage extends StatelessWidget {
  final String title;

  const DummyPage(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text('Halaman $title'),
      ),
    );
  }
}
