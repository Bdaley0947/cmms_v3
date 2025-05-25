import 'package:flutter/material.dart';

class TechnicianModule extends StatelessWidget {
  const TechnicianModule({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: const [
            DataColumn(label: Text("Tech ID")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Trade")),
            DataColumn(label: Text("Shift")),
            DataColumn(label: Text("Status")),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text("T001")),
              DataCell(Text("Mike D.")),
              DataCell(Text("Electrical")),
              DataCell(Text("2nd")),
              DataCell(Text("Available")),
            ]),
            DataRow(cells: [
              DataCell(Text("T002")),
              DataCell(Text("Sarah L.")),
              DataCell(Text("Mechanical")),
              DataCell(Text("1st")),
              DataCell(Text("Assigned")),
            ]),
          ],
        ),
      ),
    );
  }
}
