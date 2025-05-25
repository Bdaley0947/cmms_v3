import 'package:flutter/material.dart';
import '../modules/assets/asset_module.dart';
import '../modules/scheduling/scheduling_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CMMS Home'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          AssetModule(),
          SizedBox(height: 16),
          SchedulingScreen(),
        ],
      ),
    );
  }
}
