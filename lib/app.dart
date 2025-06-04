import 'package:flutter/material.dart';
import 'package:cmms_v3/theme_override.dart';
import 'screens/core/core_dashboard.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: customTheme,
      title: 'Circle Red X',
      debugShowCheckedModeBanner: false,
      home: const CoreDashboard(),
    );
  }
}
