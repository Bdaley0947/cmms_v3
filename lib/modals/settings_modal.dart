import 'package:flutter/material.dart';

class SettingsModal extends StatefulWidget {
  const SettingsModal({super.key});

  @override
  State<SettingsModal> createState() => _SettingsModalState();
}

class _SettingsModalState extends State<SettingsModal> {
  String selectedModule = 'Assets';

  final Map<String, List<String>> defaultFields = {
    'Assets': [
      'Asset ID',
      'Asset Name',
      'Asset Type',
      'Location',
      'Criticality',
      'Status',
      'Assigned Trade',
      'Charge Department',
      'Install Date',
      'Notes',
      'Health Score',
    ],
    'Work Orders': ['WO ID', 'Asset', 'Status'],
    'PMs': ['PM ID', 'Frequency', 'Assigned Trade'],
    'Technicians': ['Technician ID', 'Name', 'Status'],
  };

  final Map<String, Set<String>> activeFields = {};
  final Map<String, Map<String, TextEditingController>> labelControllers = {};

  @override
  void initState() {
    super.initState();
    for (var module in defaultFields.keys) {
      activeFields[module] = {...defaultFields[module]!};
      labelControllers[module] = {};
      for (var field in defaultFields[module]!) {
        labelControllers[module]![field] = TextEditingController(text: field);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final fields = defaultFields[selectedModule]!;

    return Dialog(
      backgroundColor: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600, maxHeight: 600),
        child: Column(
          children: [
            Container(height: 4, color: Colors.blue),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Settings',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  DropdownButton<String>(
                    dropdownColor: Colors.grey[850],
                    value: selectedModule,
                    items: defaultFields.keys
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) =>
                        setState(() => selectedModule = value!),
                  ),
                ],
              ),
            ),
            const Divider(height: 1, color: Colors.grey),
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: fields.length,
                  itemBuilder: (context, index) {
                    final field = fields[index];
                    final controller =
                        labelControllers[selectedModule]![field]!;
                    final enabled = activeFields[selectedModule]!.contains(
                      field,
                    );

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        children: [
                          Switch(
                            value: enabled,
                            onChanged: (val) {
                              setState(() {
                                if (val) {
                                  activeFields[selectedModule]!.add(field);
                                } else {
                                  activeFields[selectedModule]!.remove(field);
                                }
                              });
                            },
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            width: 160,
                            child: Text(
                              field,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: TextField(
                              controller: controller,
                              style: const TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                              ),
                              decoration: const InputDecoration(
                                hintText: 'Optional custom label',
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Save'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
