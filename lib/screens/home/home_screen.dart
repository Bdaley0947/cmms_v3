import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: const Text('CMMS_V3'),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          Container(
            width: 220,
            padding: const EdgeInsets.all(12),
            color: Colors.grey.shade200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Filters"),
                SizedBox(height: 12),
                Text("Metric: 123"),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: SizedBox(
                          width: 1200,
                          child: DataTable(
                            columns: const [
                              DataColumn(label: Text("ID")),
                              DataColumn(label: Text("Name")),
                              DataColumn(label: Text("Status")),
                            ],
                            rows: const [
                              DataRow(cells: [
                                DataCell(Text("1")),
                                DataCell(Text("Pump A")),
                                DataCell(Text("Active")),
                              ]),
                              DataRow(cells: [
                                DataCell(Text("2")),
                                DataCell(Text("Valve B")),
                                DataCell(Text("Planned")),
                              ]),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: const Border(top: BorderSide(color: Colors.grey)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Tooltip(message: 'Assets', child: Image(image: AssetImage('assets/icons/assets.png'), height: 40)),
                      Tooltip(message: 'PMs', child: Image(image: AssetImage('assets/icons/pms.png'), height: 40)),
                      Tooltip(message: 'Work Orders', child: Image(image: AssetImage('assets/icons/work_orders.png'), height: 40)),
                      Tooltip(message: 'Technicians', child: Image(image: AssetImage('assets/icons/technicians.png'), height: 40)),
                      Tooltip(message: 'Scheduler', child: Image(image: AssetImage('assets/icons/scheduler.png'), height: 40)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
