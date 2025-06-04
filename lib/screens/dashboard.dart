import 'package:flutter/material.dart';
import 'package:cmms_v3/models/asset.dart';
import 'package:cmms_v3/models/status.dart';

class DashboardScreen extends StatelessWidget {
  final List<Asset> sampleAssets = [
    Asset(id: '1', name: 'Pump A', hasCriticalFault: true),
    Asset(id: '2', name: 'Conveyor B', hasMinorFault: true),
    Asset(id: '3', name: 'Valve C', isUnderReview: true),
    Asset(id: '4', name: 'Boiler D'),
  ];

  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Circle Red X — Dashboard')),
      body: ListView.builder(
        itemCount: sampleAssets.length,
        itemBuilder: (context, index) {
          final asset = sampleAssets[index];
          return ListTile(
            title: Text(asset.name),
            subtitle: Text('Status: ${asset.status.label}'),
            leading: Icon(_iconForStatus(asset.status)),
          );
        },
      ),
    );
  }

  IconData _iconForStatus(AssetStatus status) {
    switch (status) {
      case AssetStatus.redX: return Icons.warning;
      case AssetStatus.circleRedX: return Icons.error_outline;
      case AssetStatus.redDash: return Icons.search;
      case AssetStatus.redSlash: return Icons.hourglass_empty;
      case AssetStatus.green: return Icons.check_circle;
    }
  }
}
