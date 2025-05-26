import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../../../widgets/module_shell.dart';

class WorkOrderModule extends StatefulWidget {
  const WorkOrderModule({super.key});

  @override
  State<WorkOrderModule> createState() => _WorkOrderModuleState();
}

class _WorkOrderModuleState extends State<WorkOrderModule> {
  List<List<String>> tableData = [];

  final List<String> headers = ['ID', 'Asset', 'Trade', 'Priority', 'Status'];

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
          item['trade'],
          item['priority'],
          item['status'],
        ];
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModuleShell(
      title: 'Work Orders',
      headers: headers,
      data: tableData,
      rowBuilder: (row) => row.map((cell) => Text(cell)).toList(),
    );
  }
}
