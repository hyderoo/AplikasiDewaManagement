// Halaman Tim Kami
import 'package:flutter/material.dart';

class TimPage extends StatelessWidget {
  const TimPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Tim Kami'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          TeamMember(name: 'Dewa', role: 'Founder & Event Director'),
          TeamMember(name: 'Ayu', role: 'Wedding Planner'),
          TeamMember(name: 'Made', role: 'Dekorasi & Konsep'),
        ],
      ),
    );
  }
}

class TeamMember extends StatelessWidget {
  final String name;
  final String role;
  const TeamMember({required this.name, required this.role});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.person)),
        title: Text(name),
        subtitle: Text(role),
      ),
    );
  }
}
