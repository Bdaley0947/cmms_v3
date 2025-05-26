import 'package:flutter/material.dart';

class HelpModule extends StatelessWidget {
  const HelpModule({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: const [
        Text(
          'Self-Support & Help',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text('Using the Work Order Module'),
          subtitle:
              Text('Overview of how to create, track, and close work orders.'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text('Asset Profiles Explained'),
          subtitle: Text(
              'Understanding asset statuses, criticality, and location tracking.'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text('Shift Packet Generation'),
          subtitle: Text(
              'Instructions for printing and saving shift-based WO groups.'),
        ),
      ],
    );
  }
}
