import 'package:hive/hive.dart';
import 'models/asset.dart';

Future<void> seedAssets() async {
  final box = await Hive.openBox<Asset>('assets');

  if (box.isEmpty) {
    await box.add(Asset(
      id: 'A001',
      name: 'Main Furnace',
      location: 'North Wing',
      status: 'Operational',
      type: 'Furnace',
      criticality: 'High',
    ));

    await box.add(Asset(
      id: 'A002',
      name: 'Cooling Tower',
      location: 'Roof',
      status: 'Maintenance',
      type: 'Cooling',
      criticality: 'Medium',
    ));

    await box.add(Asset(
      id: 'A003',
      name: 'Air Compressor',
      location: 'Utility Room',
      status: 'Offline',
      type: 'Compressor',
      criticality: 'Low',
    ));
  }
}
