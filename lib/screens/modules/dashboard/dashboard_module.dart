import 'package:flutter/material.dart';

class DashboardModule extends StatelessWidget {
  const DashboardModule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'CMMS Dashboard',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text("This is a placeholder for upcoming metrics, KPIs, and summaries."),
        ),
      ],
    );
  }
}
