import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Circle Red X')),
      body: const Center(child: Text('CMMS Field-Ready Alpha')),
    );
  }
}
