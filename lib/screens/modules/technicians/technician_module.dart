import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../../../widgets/module_shell.dart';

class TechnicianModule extends StatefulWidget {
  const TechnicianModule({super.key});

  @override
  State<TechnicianModule> createState() => _TechnicianModuleState();
}

class _TechnicianModuleState extends State<TechnicianModule> {
  List<List<String>> tableData = [];

  final List<String> headers = ['ID', 'Name', 'Trade', 'Shift', 'Status'];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final String raw =
        await rootBundle.loadString('assets/data/mock_technicians.json');
    final List<dynamic> jsonData = json.decode(raw);
    setState(() {
      tableData = jsonData.map<List<String>>((item) {
        return [
          item['id'].toString(),
          item['name'],
          item['trade'],
          item['shift'],
          item['status'],
        ];
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModuleShell(
      title: 'Technicians',
      headers: headers,
      data: tableData,
      rowBuilder: (row) => row.map((cell) => Text(cell)).toList(),
    );
  }
}
