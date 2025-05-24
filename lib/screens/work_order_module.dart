import 'package:flutter/material.dart';
import 'package:cmms_v3/models/work_order.dart';

class WorkOrderModule extends StatefulWidget {
  const WorkOrderModule({super.key});

  @override
  State<WorkOrderModule> createState() => _WorkOrderModuleState();
}

class _WorkOrderModuleState extends State<WorkOrderModule> {
  late List<WorkOrder> workOrders;

  @override
  void initState() {
    super.initState();
    workOrders = [
      WorkOrder(
        id: 'WO-1001',
        asset: 'AST-001',
        assetName: 'Hydraulic Press',
        trade: 'Millwright',
        status: 'Open',
        instruction: 'Replace drive seals and check pressure',
        notes: 'Rush job - line down',
        estMH: '2',
        actMH: '1.5',
        dueDate: '2025-05-25',
        department: 'Maintenance',
        jobType: 'Corrective',
        priority: 'High',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final double tableWidth = MediaQuery.of(context).size.width * 0.95;

    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          width: tableWidth,
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade700),
          ),
          child: Table(
            border: TableBorder.all(color: Colors.grey.shade700),
            columnWidths: const {
              0: FixedColumnWidth(100),
              1: FixedColumnWidth(100),
              2: FixedColumnWidth(140),
              3: FixedColumnWidth(120),
              4: FixedColumnWidth(100),
              5: FixedColumnWidth(240),
              6: FixedColumnWidth(180),
              7: FixedColumnWidth(80),
              8: FixedColumnWidth(80),
              9: FixedColumnWidth(100),
              10: FixedColumnWidth(140),
              11: FixedColumnWidth(120),
              12: FixedColumnWidth(100),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.grey.shade800),
                children: [
                  'WO #',
                  'Asset ID',
                  'Asset Name',
                  'Trade',
                  'Status',
                  'Work Instruction',
                  'Notes',
                  'Est. MH',
                  'Act. MH',
                  'Due Date',
                  'Charge Department',
                  'Job Type',
                  'Priority'
                ]
                    .map((label) => Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            label,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ))
                    .toList(),
              ),
              ...workOrders.map((wo) => TableRow(
                    children: [
                      wo.id,
                      wo.asset,
                      wo.assetName,
                      wo.trade,
                      wo.status,
                      wo.instruction,
                      wo.notes,
                      wo.estMH,
                      wo.actMH,
                      wo.dueDate,
                      wo.department,
                      wo.jobType,
                      wo.priority,
                    ]
                        .map((value) => Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(value),
                            ))
                        .toList(),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
