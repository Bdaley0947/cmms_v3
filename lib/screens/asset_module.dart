import 'package:flutter/material.dart';
import 'package:cmms_v3/models/asset.dart';
import 'package:hive/hive.dart';

class AssetModule extends StatefulWidget {
  const AssetModule({super.key});

  @override
  State<AssetModule> createState() => _AssetModuleState();
}

class _AssetModuleState extends State<AssetModule> {
  List<Asset> assets = [];

  @override
  void initState() {
    super.initState();
    loadAssets();
  }

  void loadAssets() async {
    final box = await Hive.openBox('assets');
    final loaded = box.values
        .map((e) => Map<String, dynamic>.from(e))
        .map((json) => Asset.fromJson(json))
        .toList();
    setState(() {
      assets = loaded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double tableWidth = constraints.maxWidth * 0.95;

        return Center(
          child: SizedBox(
            width: tableWidth,
            child: Table(
              border: TableBorder.all(color: Colors.grey),
              columnWidths: const {
                0: FixedColumnWidth(100),
                1: FlexColumnWidth(),
                2: FixedColumnWidth(160),
                3: FixedColumnWidth(100),
                4: FixedColumnWidth(140),
                5: FixedColumnWidth(120),
              },
              children: [
                TableRow(
                  decoration: const BoxDecoration(color: Colors.black12),
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('ID',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Name',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Location',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Status',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Type',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Criticality',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                ...assets.map((asset) {
                  return TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(asset.id),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(asset.name),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(asset.location),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(asset.status),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(asset.type),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(asset.criticality),
                    ),
                  ]);
                }).toList(),
              ],
            ),
          ),
        );
      },
    );
  }
}
