import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../../../widgets/module_shell.dart';

class AssetModule extends StatefulWidget {
  const AssetModule({super.key});

  @override
  State<AssetModule> createState() => _AssetModuleState();
}

class _AssetModuleState extends State<AssetModule> {
  List<List<String>> assetData = [];

  @override
  void initState() {
    super.initState();
    loadAssets();
  }

  Future<void> loadAssets() async {
    final raw = await rootBundle.loadString('assets/data/mock_assets.json');
    final List<dynamic> parsed = jsonDecode(raw);
    setState(() {
      assetData = parsed
          .map<List<String>>((row) => [
                row['id'].toString(),
                row['name'],
                row['type'],
                row['status'],
                row['location'],
              ])
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModuleShell(
      title: 'Assets',
      headers: ['ID', 'Name', 'Type', 'Status', 'Location'],
      data: assetData,
      rowBuilder: (row) => row.map((cell) => Text(cell)).toList(),
    );
  }
}
