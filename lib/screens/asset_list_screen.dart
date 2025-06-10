import 'package:flutter/material.dart';
import '../models/asset.dart';

class AssetListScreen extends StatelessWidget {
  final List<Asset> assets;
  const AssetListScreen({super.key, required this.assets});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Assets')),
      body: ListView.builder(
        itemCount: assets.length,
        itemBuilder: (context, index) {
          final asset = assets[index];
          return ListTile(
            title: Text(asset.name),
            subtitle: Text('Status: ${asset.status}'),
            onTap: () {
              // Navigate to detail page
            },
          );
        },
      ),
    );
  }
}
