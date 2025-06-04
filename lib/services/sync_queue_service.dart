import 'package:hive/hive.dart';
import '../models/sync_action.dart';

class SyncQueueService {
  static final _box = Hive.box<SyncAction>('syncQueue');

  static Future<void> enqueue(SyncAction action) async {
    await _box.add(action);
  }

  static List<SyncAction> getAll() {
    return _box.values.toList();
  }

  static Future<void> clear() async {
    await _box.clear();
  }
}
