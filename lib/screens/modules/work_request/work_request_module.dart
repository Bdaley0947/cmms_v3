import 'package:flutter/material.dart';

class WorkRequestModule extends StatelessWidget {
  const WorkRequestModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Submit Work Request',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: const InputDecoration(labelText: 'Asset'),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: const InputDecoration(labelText: 'Issue Description'),
            maxLines: 3,
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: const InputDecoration(labelText: 'Requested By'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Placeholder: submit logic
            },
            child: const Text('Submit Request'),
          ),
        ],
      ),
    );
  }
}
