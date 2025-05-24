import 'package:flutter/material.dart';

class ShiftPacketBuilderScreen extends StatefulWidget {
  const ShiftPacketBuilderScreen({super.key});

  @override
  State<ShiftPacketBuilderScreen> createState() =>
      _ShiftPacketBuilderScreenState();
}

class _ShiftPacketBuilderScreenState extends State<ShiftPacketBuilderScreen> {
  final Map<String, List<Map<String, String>>> groupedWorkOrders = {
    'Electrician': [
      {
        'wo': 'WO-001',
        'task': 'Inspect Panel 3A',
        'priority': 'High',
        'time': '8:00 AM',
      },
      {
        'wo': 'WO-002',
        'task': 'Replace overhead light',
        'priority': 'Medium',
        'time': '10:00 AM',
      },
    ],
    'Millwright': [
      {
        'wo': 'WO-003',
        'task': 'Rebuild hydraulic cylinder',
        'priority': 'High',
        'time': '7:30 AM',
      },
      {
        'wo': 'WO-004',
        'task': 'Align conveyor shaft',
        'priority': 'Low',
        'time': '11:00 AM',
      },
    ],
    'HVAC': [
      {
        'wo': 'WO-005',
        'task': 'Replace air filter',
        'priority': 'Low',
        'time': '9:00 AM',
      },
      {
        'wo': 'WO-006',
        'task': 'Recharge chiller system',
        'priority': 'Medium',
        'time': '1:00 PM',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shift Packet Builder'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: groupedWorkOrders.entries.map((entry) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                entry.key,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Table(
                border: TableBorder.all(color: Colors.grey),
                columnWidths: const {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(4),
                  2: FlexColumnWidth(2),
                  3: FlexColumnWidth(2),
                },
                children: [
                  const TableRow(
                    decoration: BoxDecoration(color: Colors.black12),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'WO #',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Task',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Priority',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Time',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  ...entry.value.map((wo) {
                    return TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(wo['wo']!),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(wo['task']!),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(wo['priority']!),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(wo['time']!),
                        ),
                      ],
                    );
                  }).toList(),
                ],
              ),
              const SizedBox(height: 24),
            ],
          );
        }).toList(),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Print')),
            ElevatedButton(onPressed: () {}, child: const Text('Save')),
            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }
}
