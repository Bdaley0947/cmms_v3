import 'package:hive/hive.dart';
part 'event_logger.g.dart';

@HiveType(typeId: 4)
class LogEvent extends HiveObject {
  @HiveField(0)
  final DateTime timestamp;
  @HiveField(1)
  final String module;
  @HiveField(2)
  final String action;
  @HiveField(3)
  final String details;

  LogEvent({
    required this.timestamp,
    required this.module,
    required this.action,
    required this.details,
  });
}
