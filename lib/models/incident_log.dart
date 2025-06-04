import 'package:hive/hive.dart';

part 'incident_log.g.dart';

@HiveType(typeId: 1)
class IncidentLog {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String summary;

  @HiveField(2)
  final DateTime timestamp;

  @HiveField(3)
  final String assetId;

  @HiveField(4)
  final bool isSynced;

  IncidentLog({
    required this.id,
    required this.summary,
    required this.timestamp,
    required this.assetId,
    this.isSynced = false,
  });
}
