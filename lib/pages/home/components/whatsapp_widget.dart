import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toastify_flutter/toastify_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsappWidget extends StatelessWidget {
  const WhatsappWidget({super.key});

  Future<void> _openWhatsApp(BuildContext context) async {
    const phoneNumber = "+6281393344476";
    const message =
        "Halo, saya tertarik dengan layanan wedding organizer Anda.";
    String encodedMessage = Uri.encodeComponent(message);
    final whatsappUrl =
        Uri.parse('https://wa.me/$phoneNumber?text=$encodedMessage');

    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
    } else {
      if (context.mounted) {
        ToastifyFlutter.success(
          context,
          message: 'This is a custom toast message.',
          duration: 5,
          position: ToastPosition.bottom,
          style: ToastStyle.simple,
          onClose: true,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green.shade800,
      shape: CircleBorder(),
      onPressed: () {
        _openWhatsApp(context);
      },
      tooltip: 'Hubungi kami via WhatsApp',
      child: FaIcon(FontAwesomeIcons.whatsapp),
    );
  }
}
