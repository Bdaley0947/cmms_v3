import 'package:flutter/material.dart';

class CMMSModuleConfigScreen extends StatefulWidget {
  const CMMSModuleConfigScreen({super.key});

  @override
  State<CMMSModuleConfigScreen> createState() => _CMMSModuleConfigScreenState();
}

class _CMMSModuleConfigScreenState extends State<CMMSModuleConfigScreen> {
  final List<Map<String, dynamic>> moduleData = [
    {
      'name': 'Work Orders',
      'status': 'Active',
      'complete': 100,
      'critical': 0,
      'wishlist': 2,
      'dev': false,
    },
    {
      'name': 'Assets',
      'status': 'Active',
      'complete': 100,
      'critical': 0,
      'wishlist': 0,
      'dev': false,
    },
    {
      'name': 'PMs',
      'status': 'Active',
      'complete': 100,
      'critical': 0,
      'wishlist': 1,
      'dev': false,
    },
    {
      'name': 'Shift Packet',
      'status': 'Dev',
      'complete': 90,
      'critical': 2,
      'wishlist': 3,
      'dev': true,
    },
    {
      'name': 'Operator Portal',
      'status': 'Hidden',
      'complete': 0,
      'critical': 1,
      'wishlist': 4,
      'dev': true,
    },
    {
      'name': 'Settings',
      'status': 'Active',
      'complete': 100,
      'critical': 0,
      'wishlist': 0,
      'dev': false,
    },
  ];

  final List<String> statusOptions = ['Active', 'Dev', 'Hidden'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CMMS Module Config')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          DataTable(
            headingRowColor: MaterialStateProperty.all(
              Colors.black.withOpacity(0.05),
            ),
            columns: const [
              DataColumn(label: Text('Module')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('%')),
              DataColumn(label: Text('Critical')),
              DataColumn(label: Text('Wishlist')),
              DataColumn(label: Text('Dev Mode')),
              DataColumn(label: Text('Actions')),
            ],
            rows: moduleData.map((module) {
              return DataRow(
                cells: [
                  DataCell(Text(module['name'])),
                  DataCell(
                    DropdownButton<String>(
                      value: module['status'],
                      items: statusOptions
                          .map(
                            (status) => DropdownMenuItem(
                              value: status,
                              child: Text(status),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          module['status'] = value!;
                        });
                      },
                    ),
                  ),
                  DataCell(Text('${module['complete']}%')),
                  DataCell(Text('${module['critical']}')),
                  DataCell(Text('${module['wishlist']}')),
                  DataCell(
                    Switch(
                      value: module['dev'],
                      onChanged: (val) {
                        setState(() {
                          module['dev'] = val;
                        });
                      },
                    ),
                  ),
                  DataCell(
                    Row(
                      children: [
                        TextButton(onPressed: () {}, child: const Text('Jump')),
                        TextButton(onPressed: () {}, child: const Text('Hide')),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
