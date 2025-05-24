// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/work_order_module.dart';
import 'screens/asset_module.dart';
import 'screens/pm_module.dart';
import 'screens/technician_module.dart';

void main() {
  runApp(const CMMSApp());
}

class CMMSApp extends StatelessWidget {
  const CMMSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CMMS FastBuild',
      theme: ThemeData.dark(),
      home: const CMMSHomePage(),
    );
  }
}

class CMMSHomePage extends StatefulWidget {
  const CMMSHomePage({super.key});

  @override
  State<CMMSHomePage> createState() => _CMMSHomePageState();
}

class _CMMSHomePageState extends State<CMMSHomePage> {
  String selectedModule = 'Work Orders';

  Widget getModuleWidget() {
    switch (selectedModule) {
      case 'Assets':
        return const AssetModule();
      case 'PMs':
        return const PMModule();
      case 'Technicians':
        return const TechnicianModule();
      case 'Work Orders':
      default:
        return const WorkOrderModule();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CMMS FastBuild')),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: ['Work Orders', 'Assets', 'PMs', 'Technicians']
                .indexOf(selectedModule),
            onDestinationSelected: (index) {
              setState(() {
                selectedModule =
                    ['Work Orders', 'Assets', 'PMs', 'Technicians'][index];
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(Icons.assignment), label: Text('WOs')),
              NavigationRailDestination(
                  icon: Icon(Icons.business), label: Text('Assets')),
              NavigationRailDestination(
                  icon: Icon(Icons.schedule), label: Text('PMs')),
              NavigationRailDestination(
                  icon: Icon(Icons.people), label: Text('Techs')),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(child: getModuleWidget()),
        ],
      ),
    );
  }
}
