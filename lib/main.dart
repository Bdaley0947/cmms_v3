import 'package:flutter/material.dart';
import 'package:cmms_v3/screens/dashboard.dart';

void main() {
  runApp(const CMMSApp());
}

class CMMSApp extends StatelessWidget {
  const CMMSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circle Red X',
      theme: ThemeData.dark(useMaterial3: true),
      home: DashboardScreen(),
    );
  }
}
