import 'package:hive/hive.dart';
part 'work_order.g.dart';

@HiveType(typeId: 1)
class WorkOrder extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String assetId;

  @HiveField(2)
  final String description;

  @HiveField(3)
  final DateTime due;

  WorkOrder({
    required this.id,
    required this.assetId,
    required this.description,
    required this.due
  });
}
