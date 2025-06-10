import 'package:hive/hive.dart';
import '../models/asset.dart';
import '../models/work_order.dart';

class DataService {
  Future<void> init() async {
    Hive.registerAdapter(AssetAdapter());
    Hive.registerAdapter(WorkOrderAdapter());
  }
}
