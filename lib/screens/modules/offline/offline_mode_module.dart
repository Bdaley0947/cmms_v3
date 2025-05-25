import 'package:flutter/material.dart';

class OfflineModeModule extends StatelessWidget {
  const OfflineModeModule({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: const [
        Text(
          'Offline Mode',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ListTile(
          title: Text('Mode'),
          subtitle: Text('Local-only (Hive)'),
          trailing: Icon(Icons.wifi_off),
        ),
        Divider(),
        ListTile(
          title: Text('Auto Backup'),
          subtitle: Text('Enabled'),
        ),
        Divider(),
        ListTile(
          title: Text('Last Local Sync'),
          subtitle: Text('Today at 09:43'),
        ),
      ],
    );
  }
}
