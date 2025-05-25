import 'package:flutter/material.dart';

class PMModule extends StatelessWidget {
  const PMModule({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: const [
            DataColumn(label: Text("PM ID")),
            DataColumn(label: Text("Asset")),
            DataColumn(label: Text("Frequency")),
            DataColumn(label: Text("Next Due")),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text("PM001")),
              DataCell(Text("Hydraulic Press")),
              DataCell(Text("Monthly")),
              DataCell(Text("2025-06-01")),
            ]),
            DataRow(cells: [
              DataCell(Text("PM002")),
              DataCell(Text("Compressor A")),
              DataCell(Text("Quarterly")),
              DataCell(Text("2025-07-15")),
            ]),
          ],
        ),
      ),
    );
  }
}
