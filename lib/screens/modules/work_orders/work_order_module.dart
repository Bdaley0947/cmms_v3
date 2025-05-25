import 'package:flutter/material.dart';

class WorkOrderModule extends StatelessWidget {
  const WorkOrderModule({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: const [
            DataColumn(label: Text("WO ID")),
            DataColumn(label: Text("Asset")),
            DataColumn(label: Text("Priority")),
            DataColumn(label: Text("Status")),
            DataColumn(label: Text("Due Date")),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text("WO001")),
              DataCell(Text("Hydraulic Press")),
              DataCell(Text("High")),
              DataCell(Text("Open")),
              DataCell(Text("2025-06-03")),
            ]),
            DataRow(cells: [
              DataCell(Text("WO002")),
              DataCell(Text("Compressor A")),
              DataCell(Text("Medium")),
              DataCell(Text("Closed")),
              DataCell(Text("2025-05-20")),
            ]),
          ],
        ),
      ),
    );
  }
}
