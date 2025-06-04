import 'package:hive/hive.dart';

part 'sync_action.g.dart';

@HiveType(typeId: 1)
class SyncAction extends HiveObject {
  @HiveField(0)
  String type;

  @HiveField(1)
  String payload;

  @HiveField(2)
  DateTime createdAt;

  SyncAction({
    required this.type,
    required this.payload,
    required this.createdAt,
  });
}
