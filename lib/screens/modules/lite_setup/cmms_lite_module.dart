import 'package:flutter/material.dart';

class CMMSLiteModule extends StatelessWidget {
  const CMMSLiteModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'CMMS-lite Setup',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text('Step 1: Enter max asset count (default: 25)'),
          SizedBox(height: 10),
          Text('Step 2: Enable FIFO for closed WOs'),
          SizedBox(height: 10),
          Text('Step 3: Export template'),
        ],
      ),
    );
  }
}
