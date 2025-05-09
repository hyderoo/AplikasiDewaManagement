import 'package:dewa_wo_app/cubits/auth/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginRequiredDialog extends StatelessWidget {
  final String actionName;
  const LoginRequiredDialog({super.key, required this.actionName});

  static bool _isAuthenticated(BuildContext context) {
    final authState = context.read<AuthCubit>().state;
    return authState is AuthAuthenticated;
  }

  static check({
    required BuildContext context,
    required VoidCallback action,
    required String actionName,
  }) {
    if (_isAuthenticated(context)) {
      action();
    } else {
      showDialog(
        context: context,
        builder: (context) => LoginRequiredDialog(actionName: actionName),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Login Diperlukan',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.lock_outline,
            size: 64,
            color: Colors.pink[300],
          ),
          const SizedBox(height: 16),
          Text(
            'Untuk $actionName, Anda perlu login terlebih dahulu.',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 8),
          Text(
            'Silakan login ke akun Anda atau daftar jika belum memiliki akun.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.grey[800],
          ),
          child: const Text('Batal'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            context.pushNamed('login');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text('Login'),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 8),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    );
  }
}
