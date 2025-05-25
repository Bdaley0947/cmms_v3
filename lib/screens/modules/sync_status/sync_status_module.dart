import 'package:flutter/material.dart';

class SyncStatusModule extends StatelessWidget {
  const SyncStatusModule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Data Sync Monitor',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text('Last sync: 5 minutes ago'),
          SizedBox(height: 12),
          Text('Pending uploads: 2'),
          SizedBox(height: 12),
          Text('Conflict warnings: 0'),
        ],
      ),
    );
  }
}
