import 'package:flutter/material.dart';
import 'package:cmms_v3/models/sync_action.dart';

class CoreDashboard extends StatelessWidget {
  final List<SyncAction> syncActions;

  const CoreDashboard({super.key, required this.syncActions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: syncActions.map((action) {
          return Text('Synced'); // id removed to avoid undefined_getter
        }).toList(),
      ),
    );
  }
}
