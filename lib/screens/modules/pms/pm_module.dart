import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../../../widgets/module_shell.dart';

class PMModule extends StatefulWidget {
  const PMModule({super.key});

  @override
  State<PMModule> createState() => _PMModuleState();
}

class _PMModuleState extends State<PMModule> {
  List<List<String>> tableData = [];

  final List<String> headers = [
    'ID',
    'Asset',
    'Frequency',
    'Instruction',
    'Next Due'
  ];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final String raw = await rootBundle.loadString('assets/data/mock_pms.json');
    final List<dynamic> jsonData = json.decode(raw);
    setState(() {
      tableData = jsonData.map<List<String>>((item) {
        return [
          item['id'].toString(),
          item['asset'],
          item['frequency'],
          item['instruction'],
          item['nextDue'],
        ];
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModuleShell(
      title: 'PMs',
      headers: headers,
      data: tableData,
      rowBuilder: (row) => row.map((cell) => Text(cell)).toList(),
    );
  }
}
