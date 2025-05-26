import 'package:flutter/material.dart';
import 'package:cmms_v3/widgets/module_data_table.dart';

enum Module {
  assets,
  technicians,
  scheduler,
  workOrders,
  pms,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Module selectedModule = Module.assets;

  @override
  Widget build(BuildContext context) {
    final String currentModule = selectedModule.toString().split(".").last;

    return Scaffold(
      appBar: AppBar(
        title: const Text('CMMS Pro'),
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: Module.values.indexOf(selectedModule),
            onDestinationSelected: (int index) {
              setState(() {
                selectedModule = Module.values[index];
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.precision_manufacturing),
                label: Text('Assets'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.engineering),
                label: Text('Technicians'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.schedule),
                label: Text('Scheduler'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.assignment),
                label: Text('Work Orders'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.build),
                label: Text('PMs'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Metrics / Filter Area"),
                const SizedBox(height: 20),
                ModuleDataTable(moduleName: currentModule),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
