import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WhatsappWidget extends StatelessWidget {
  const WhatsappWidget({super.key});

  Future<void> _openWhatsApp(BuildContext context) async {
    const phoneNumber = "+6281393344476";
    const message =
        "Halo, saya tertarik dengan layanan wedding organizer Anda.";
    String encodedMessage = Uri.encodeComponent(message);
    final whatsappUrl = 'https://wa.me/$phoneNumber?text=$encodedMessage';

    await launchUrlString(whatsappUrl, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green.shade400,
      shape: CircleBorder(),
      onPressed: () {
        _openWhatsApp(context);
      },
      tooltip: 'Hubungi kami via WhatsApp',
      child: FaIcon(FontAwesomeIcons.whatsapp),
    );
  }
}
