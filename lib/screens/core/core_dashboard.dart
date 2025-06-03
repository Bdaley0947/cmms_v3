import 'package:flutter/material.dart';
import '../modules/assets_screen.dart';
import '../modules/work_orders_screen.dart';
import '../modules/reports_screen.dart';

class CoreDashboard extends StatelessWidget {
  const CoreDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Circle Red X')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AssetsScreen()),
              ),
              child: const Text('Assets'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WorkOrdersScreen()),
              ),
              child: const Text('Work Orders'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ReportsScreen()),
              ),
              child: const Text('Reports'),
            ),
          ],
        ),
      ),
    );
  }
}
