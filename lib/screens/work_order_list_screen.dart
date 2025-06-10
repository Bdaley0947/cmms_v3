import 'package:flutter/material.dart';
import '../models/work_order.dart';

class WorkOrderListScreen extends StatelessWidget {
  final List<WorkOrder> workOrders;
  const WorkOrderListScreen({super.key, required this.workOrders});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Work Orders')),
      body: ListView.builder(
        itemCount: workOrders.length,
        itemBuilder: (context, index) {
          final wo = workOrders[index];
          return ListTile(
            title: Text(wo.description),
            subtitle: Text('Due: ${wo.due.toLocal()}'),
            onTap: () {
              // Navigate to detail page
            },
          );
        },
      ),
    );
  }
}
