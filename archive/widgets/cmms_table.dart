// lib/widgets/cmms_table.dart
import 'package:flutter/material.dart';

class CMMSTable extends StatelessWidget {
  final List<String> headers;
  final List<Map<String, dynamic>> data;
  final List<Widget> Function(Map<String, dynamic>) rowBuilder;

  const CMMSTable({
    super.key,
    required this.headers,
    required this.data,
    required this.rowBuilder,
  });

  @override
  Widget build(BuildContext context) {
    final columnCount = headers.length;
    final tableWidth = MediaQuery.of(context).size.width * 0.95;

    final columnWidths = <int, TableColumnWidth>{
      for (int i = 0; i < columnCount; i++) i: const FlexColumnWidth(),
    };

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: tableWidth,
        child: Table(
          border: TableBorder.all(color: Colors.grey),
          columnWidths: columnWidths,
          children: [
            TableRow(
              decoration: BoxDecoration(color: Colors.grey[800]),
              children: headers
                  .map((h) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(h,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ))
                  .toList(),
            ),
            ...data.map((row) => TableRow(
                  children: rowBuilder(row)
                      .map((cell) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: cell,
                          ))
                      .toList(),
                )),
          ],
        ),
      ),
    );
  }
}
