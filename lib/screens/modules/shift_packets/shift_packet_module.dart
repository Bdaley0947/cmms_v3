import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../../../widgets/module_shell.dart';

class ShiftPacketModule extends StatefulWidget {
  const ShiftPacketModule({super.key});

  @override
  State<ShiftPacketModule> createState() => _ShiftPacketModuleState();
}

class _ShiftPacketModuleState extends State<ShiftPacketModule> {
  List<List<String>> tableData = [];

  final List<String> headers = ['ID', 'Task', 'Assigned', 'Shift', 'Status'];

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
          item['instruction'],
          item['asset'],
          item['frequency'],
          item['nextDue'],
        ];
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModuleShell(
      title: 'Shift Packets',
      headers: headers,
      data: tableData,
      rowBuilder: (row) => row.map((cell) => Text(cell)).toList(),
    );
  }
}
