import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../../../widgets/module_shell.dart';

class SchedulerModule extends StatefulWidget {
  const SchedulerModule({super.key});

  @override
  State<SchedulerModule> createState() => _SchedulerModuleState();
}

class _SchedulerModuleState extends State<SchedulerModule> {
  List<List<String>> tableData = [];

  final List<String> headers = [
    'ID',
    'Asset',
    'Due Date',
    'Status',
    'Assigned'
  ];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final String raw =
        await rootBundle.loadString('assets/data/mock_work_orders_full.json');
    final List<dynamic> jsonData = json.decode(raw);
    setState(() {
      tableData = jsonData.map<List<String>>((item) {
        return [
          item['id'].toString(),
          item['asset'],
          item['dueDate'],
          item['status'],
          item['technician'],
        ];
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModuleShell(
      title: 'Scheduler',
      headers: headers,
      data: tableData,
      rowBuilder: (row) => row.map((cell) => Text(cell)).toList(),
    );
  }
}
