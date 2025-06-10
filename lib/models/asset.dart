import 'package:hive/hive.dart';
part 'asset.g.dart';

@HiveType(typeId: 0)
class Asset extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String status;

  Asset({required this.id, required this.name, required this.status});
}
