import 'package:flutter/material.dart';
import '../../screens/modules/assets/asset_module.dart';
import '../../screens/modules/technicians/technician_module.dart';
import '../../screens/modules/work_orders/work_order_module.dart';
import '../../screens/modules/pms/pm_module.dart';
import '../../screens/modules/scheduler/scheduler_module.dart';
import '../../screens/modules/scheduling/scheduling_screen.dart';

class ModuleShell extends StatelessWidget {
  final String title;
  final List<String> headers;
  final List<List<String>> data;
  final List<Widget> Function(List<String>) rowBuilder;

  const ModuleShell({
    super.key,
    required this.title,
    required this.headers,
    required this.data,
    required this.rowBuilder,
  });

  void _navigateTo(BuildContext context, Widget screen) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 250,
            color: Colors.grey[200],
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'CMMS_V3',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 150,
                  margin: const EdgeInsets.all(8),
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Module specific\nfilters and metrics',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
                _navButton(context, 'Assets', const AssetModule()),
                _navButton(context, 'Technicians', const TechnicianModule()),
                _navButton(context, 'Work Orders', const WorkOrderModule()),
                _navButton(context, 'PMs', const PMModule()),
                _navButton(context, 'Scheduler', const SchedulerModule()),
                _navButton(context, 'Shift Packets', const SchedulingScreen()),
              ],
            ),
          ),

          // Main content
          Expanded(
            child: Column(
              children: [
                Container(
                  color: Colors.grey[100],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title, style: const TextStyle(fontSize: 18)),
                      Row(
                        children: [
                          const Text(
                            'Hamburger button that\nhas settings and config',
                            style: TextStyle(color: Colors.red),
                            textAlign: TextAlign.right,
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: DataTable(
                        headingRowColor:
                            WidgetStateProperty.all(Colors.grey[300]),
                        columns: headers
                            .map((h) => DataColumn(
                                  label: Text(h,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ))
                            .toList(),
                        rows: data
                            .map((row) => DataRow(
                                  cells: row
                                      .map((cell) => DataCell(
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0,
                                                      horizontal: 12.0),
                                              child: Text(cell),
                                            ),
                                          ))
                                      .toList(),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _navButton(BuildContext context, String label, Widget screen) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => _navigateTo(context, screen),
          child: Text(label),
        ),
      ),
    );
  }
}
