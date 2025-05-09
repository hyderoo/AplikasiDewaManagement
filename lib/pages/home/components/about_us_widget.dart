import 'package:flutter/material.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Tentang Kami',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Dewa Management adalah penyedia jasa wedding organizer profesional yang berdedikasi untuk menciptakan momen pernikahan yang tak terlupakan. Dengan pengalaman dan keahlian kami, kami berkomitmen untuk menghadirkan sentuhan elegan dalam setiap detail pernikahan Anda.',
                style: TextStyle(
                  height: 1.5,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
