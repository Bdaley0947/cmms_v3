import 'package:flutter/material.dart';

class CoreDashboard extends StatelessWidget {
  const CoreDashboard({super.key});

  void _navigate(BuildContext context, String screen) {
    // Placeholder navigation logic
    Navigator.pushNamed(context, '/${screen.toLowerCase().replaceAll(' ', '_')}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Circle Red X – Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: const Text('Assets', style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () => _navigate(context, 'Assets'),
            ),
            ListTile(
              title: const Text('Service Requests', style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () => _navigate(context, 'Service Requests'),
            ),
            ListTile(
              title: const Text('Sync Queue', style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () => _navigate(context, 'Sync Queue'),
            ),
          ],
        ),
      ),
    );
  }
}
