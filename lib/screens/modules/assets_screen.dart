import 'package:flutter/material.dart';

class AssetsScreen extends StatelessWidget {
  const AssetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Assets')),
      body: const Center(child: Text('Assets Module')),
    );
  }
}
