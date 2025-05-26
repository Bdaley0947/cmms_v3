import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  final basePath = Directory('assets/data');
  basePath.createSync(recursive: true);

  Map<String, List<String>> moduleFiles = {
    'mock_assets.json': ['id', 'name', 'type', 'status', 'location'],
    'mock_technicians.json': ['id', 'name', 'shift', 'status', 'trade'],
    'mock_work_orders.json': ['id', 'asset', 'priority', 'status', 'due_date'],
    'mock_pms.json': ['id', 'asset', 'frequency', 'status', 'last_done'],
    'mock_scheduler.json': ['id', 'task', 'assigned_to', 'start', 'end'],
    'mock_shift_packets.json': ['id', 'shift', 'created_by', 'tasks', 'notes'],
  };

  for (var entry in moduleFiles.entries) {
    final file = File('${basePath.path}/${entry.key}');
    final records = List.generate(100, (i) {
      return Map.fromEntries(entry.value
          .map((k) => MapEntry(k, '${k}_$i\_${Random().nextInt(100)}')));
    });
    file.writeAsStringSync(JsonEncoder.withIndent('  ').convert(records));
  }

  File('${basePath.path}/mock_home_metrics.json')
      .writeAsStringSync(JsonEncoder.withIndent('  ').convert({
    'overduePMs': Random().nextInt(15) + 5,
    'openWorkOrders': Random().nextInt(40) + 10,
    'offlineAssets': Random().nextInt(10),
    'alerts': List.generate(5, (i) => 'Alert #$i')
  }));

  File('${basePath.path}/mock_messages.json')
      .writeAsStringSync(JsonEncoder.withIndent('  ').convert(List.generate(
          10,
          (i) => {
                'timestamp': '2025-05-26T0${Random().nextInt(9) + 1}:00:00Z',
                'message': 'System message #$i',
                'type': ['info', 'warning', 'error'][Random().nextInt(3)]
              })));

  print('Mock data generated in ${basePath.path}');
}
