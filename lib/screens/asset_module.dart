// lib/screens/asset_module.dart
import 'package:flutter/material.dart';
import 'package:cmms_v3/models/asset.dart';

class AssetModule extends StatefulWidget {
  const AssetModule({super.key});

  @override
  State<AssetModule> createState() => _AssetModuleState();
}

class _AssetModuleState extends State<AssetModule> {
  List<Asset> assets = [
    Asset(
      id: 'AST-001',
      name: 'Hydraulic Press',
      location: 'Bay 1',
      status: 'Active',
      type: 'Mechanical',
      criticality: 'High',
    ),
    Asset(
      id: 'AST-002',
      name: 'Overhead Crane',
      location: 'Bay 2',
      status: 'Offline',
      type: 'Electrical',
      criticality: 'Medium',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double tableWidth = MediaQuery.of(context).size.width * 0.95;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Asset Module',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: Container(
                width: tableWidth,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade700),
                ),
                child: Table(
                  border: TableBorder.all(color: Colors.grey.shade700),
                  columnWidths: const {
                    0: FixedColumnWidth(100),
                    1: FlexColumnWidth(),
                    2: FixedColumnWidth(160),
                    3: FixedColumnWidth(100),
                    4: FixedColumnWidth(140),
                    5: FixedColumnWidth(120),
                  },
                  children: [
                    TableRow(
                      decoration: BoxDecoration(color: Colors.grey.shade800),
                      children: [
                        'ID',
                        'Name',
                        'Location',
                        'Status',
                        'Type',
                        'Criticality',
                      ]
                          .map((label) => Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  label,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                    ...assets.map((a) => TableRow(
                          children: [
                            a.id,
                            a.name,
                            a.location,
                            a.status,
                            a.type,
                            a.criticality,
                          ]
                              .map((value) => Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      value,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ))
                              .toList(),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Add')),
            const SizedBox(width: 16),
            ElevatedButton(onPressed: () {}, child: const Text('Save')),
          ],
        ),
      ),
    );
  }
}
