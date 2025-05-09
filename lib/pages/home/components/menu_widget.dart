import 'package:dewa_wo_app/dialogs/login_required_dialog.dart';
import 'package:dewa_wo_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildMenuCircle(
            icon: AppMenu.layanan,
            label: 'Layanan',
            onTap: () => context.pushNamed('layanan'),
          ),
          _buildMenuCircle(
            icon: AppMenu.portofolio,
            label: 'Portofolio',
            onTap: () => context.pushNamed('portofolio'),
          ),
          _buildMenuCircle(
            icon: AppMenu.tim,
            label: 'Tim',
            onTap: () => context.pushNamed('tim'),
          ),
          _buildMenuCircle(
            icon: AppMenu.pesanan,
            label: 'Pesanan',
            onTap: () => LoginRequiredDialog.check(
              context: context,
              action: () => context.pushNamed('pesanan'),
              actionName: 'melihat pesanan',
            ),
          ),
        ],
      ),
    );
  }

  _buildMenuCircle({
    required String icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.pink[50],
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              icon,
              color: Colors.pink,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xff2F2B3D),
            ),
          ),
        ],
      ),
    );
  }
}
