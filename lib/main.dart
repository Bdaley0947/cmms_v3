import 'package:flutter/material.dart';
import 'screens/modules/assets_screen.dart';
import 'screens/modules/reports_screen.dart';
import 'screens/modules/work_orders_screen.dart';

void main() => runApp(const CMMSApp());

class CMMSApp extends StatelessWidget {
  const CMMSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circle Red X',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  void _navigateTo(BuildContext context, Widget screen) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Circle Red X')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _navigateTo(context, const AssetsScreen()),
              child: const Text('Assets'),
            ),
            ElevatedButton(
              onPressed: () => _navigateTo(context, const WorkOrdersScreen()),
              child: const Text('Work Orders'),
            ),
            ElevatedButton(
              onPressed: () => _navigateTo(context, const ReportsScreen()),
              child: const Text('Reports'),
            ),
          ],
        ),
      ),
    );
  }
}
