import 'package:hive/hive.dart';

part 'service_request.g.dart';

@HiveType(typeId: 0)
class ServiceRequest {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String description;

  @HiveField(3)
  final DateTime createdAt;

  @HiveField(4)
  final bool isSynced;

  ServiceRequest({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    this.isSynced = false,
  });
}
