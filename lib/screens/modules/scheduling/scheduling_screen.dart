import 'package:flutter/material.dart';

class SchedulingScreen extends StatelessWidget {
  const SchedulingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.calendar_today),
            Text('Schedule'),
          ],
        ),
      ),
    );
  }
}
