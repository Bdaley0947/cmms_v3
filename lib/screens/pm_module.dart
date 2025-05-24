// lib/screens/pm_module.dart
import 'package:flutter/material.dart';
import '../models/pm.dart';
import '../widgets/cmms_table.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class PMModule extends StatefulWidget {
  const PMModule({super.key});

  @override
  State<PMModule> createState() => _PMModuleState();
}

class _PMModuleState extends State<PMModule> {
  List<PM> pms = [];

  @override
  void initState() {
    super.initState();
    loadPMs();
  }

  Future<void> loadPMs() async {
    final String jsonString =
        await rootBundle.loadString('mock_work_orders_full.json');
    final List<dynamic> jsonData = json.decode(jsonString)['pms'];
    setState(() {
      pms = jsonData.map((e) => PM.fromJson(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CMMSTable(
      headers: [
        'ID',
        'Asset',
        'Frequency',
        'Last Date',
        'Next Date',
        'Instruction'
      ],
      data: pms.map((p) => p.toJson()).toList(),
      rowBuilder: (row) => [
        Text(row['id']),
        Text(row['asset']),
        Text(row['frequency']),
        Text(row['lastDate']),
        Text(row['nextDate']),
        Text(row['instruction']),
      ],
    );
  }
}
