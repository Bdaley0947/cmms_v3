import 'package:flutter/material.dart';

class AssetsModule extends StatelessWidget {
  const AssetsModule({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: const [
            DataColumn(label: Text("Asset ID")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Type")),
            DataColumn(label: Text("Status")),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text("001")),
              DataCell(Text("Hydraulic Press")),
              DataCell(Text("Mechanical")),
              DataCell(Text("Active")),
            ]),
            DataRow(cells: [
              DataCell(Text("002")),
              DataCell(Text("Compressor A")),
              DataCell(Text("Pneumatic")),
              DataCell(Text("Maintenance")),
            ]),
          ],
        ),
      ),
    );
  }
}
