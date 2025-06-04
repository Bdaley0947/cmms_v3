import 'package:flutter/material.dart';
import 'screens/core/core_dashboard.dart';

void main() {
  runApp(const CMMSApp());
}

class CMMSApp extends StatelessWidget {
  const CMMSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circle Red X',
      theme: ThemeData.dark(),
      home: const CoreDashboard(),
    );
  }
}
