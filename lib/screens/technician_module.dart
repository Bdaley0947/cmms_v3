// lib/screens/technician_module.dart
import 'package:flutter/material.dart';
import '../models/technician.dart';
import '../widgets/cmms_table.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class TechnicianModule extends StatefulWidget {
  const TechnicianModule({super.key});

  @override
  State<TechnicianModule> createState() => _TechnicianModuleState();
}

class _TechnicianModuleState extends State<TechnicianModule> {
  List<Technician> technicians = [];

  @override
  void initState() {
    super.initState();
    loadTechnicians();
  }

  Future<void> loadTechnicians() async {
    final String jsonString =
        await rootBundle.loadString('mock_work_orders_full.json');
    final List<dynamic> jsonData = json.decode(jsonString)['technicians'];
    setState(() {
      technicians = jsonData.map((e) => Technician.fromJson(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CMMSTable(
      headers: ['ID', 'Name', 'Trade', 'Shift'],
      data: technicians.map((t) => t.toJson()).toList(),
      rowBuilder: (row) => [
        Text(row['id']),
        Text(row['name']),
        Text(row['trade']),
        Text(row['shift']),
      ],
    );
  }
}
