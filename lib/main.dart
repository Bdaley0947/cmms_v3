import 'screens/modules/assets/asset_module.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CMMS Test',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const AssetModule(),
    );
  }
}
