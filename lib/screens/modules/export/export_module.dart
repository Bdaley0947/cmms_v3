import 'package:flutter/material.dart';

class ExportModule extends StatelessWidget {
  const ExportModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Data Export Center',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.download),
            title: const Text('Export Closed Work Orders'),
            subtitle: const Text('Download completed work orders in CSV format.'),
            trailing: ElevatedButton(
              onPressed: () {
                // Placeholder: export logic
              },
              child: const Text('Export'),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.download),
            title: const Text('Export Asset Registry'),
            subtitle: const Text('Download current asset list with all metadata.'),
            trailing: ElevatedButton(
              onPressed: () {
                // Placeholder: export logic
              },
              child: const Text('Export'),
            ),
          ),
        ],
      ),
    );
  }
}
