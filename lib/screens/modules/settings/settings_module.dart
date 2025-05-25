import 'package:flutter/material.dart';

class SettingsModule extends StatelessWidget {
  const SettingsModule({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: const [
        Text(
          'Settings',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ListTile(
          title: Text('User Roles'),
          subtitle: Text('Manage access levels and overrides'),
        ),
        Divider(),
        ListTile(
          title: Text('Sync Settings'),
          subtitle: Text('Configure auto-sync and offline behavior'),
        ),
        Divider(),
        ListTile(
          title: Text('Data Export'),
          subtitle: Text('Download work orders and asset history'),
        ),
      ],
    );
  }
}
