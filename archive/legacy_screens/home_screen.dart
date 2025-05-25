import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _moduleScreens = [
    const Center(child: Text('Assets Table')),
    const Center(child: Text('PMs Table')),
    const Center(child: Text('Work Orders Table')),
    const Center(child: Text('Technicians Table')),
    const Center(child: Text('Scheduler Table')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: const Text('CMMS_V3'),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Placeholder for settings or admin menu
              },
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 220,
            padding: const EdgeInsets.all(12),
            color: Colors.grey.shade200,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Filters"),
                SizedBox(height: 12),
                Text("Metric: 123"),
              ],
            ),
          ),

          // Main content panel
          Expanded(
            child: Column(
              children: [
                // Top-aligned table area
                Expanded(
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.all(16),
                    child: _moduleScreens[_currentIndex],
                  ),
                ),

                // Bottom navigation bar
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: const Border(top: BorderSide(color: Colors.grey)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon:
                            Image.asset('assets/icons/assets.png', height: 40),
                        onPressed: () => setState(() => _currentIndex = 0),
                      ),
                      IconButton(
                        icon: Image.asset('assets/icons/pms.png', height: 40),
                        onPressed: () => setState(() => _currentIndex = 1),
                      ),
                      IconButton(
                        icon: Image.asset('assets/icons/work_orders.png',
                            height: 40),
                        onPressed: () => setState(() => _currentIndex = 2),
                      ),
                      IconButton(
                        icon: Image.asset('assets/icons/technicians.png',
                            height: 40),
                        onPressed: () => setState(() => _currentIndex = 3),
                      ),
                      IconButton(
                        icon: Image.asset('assets/icons/scheduler.png',
                            height: 40),
                        onPressed: () => setState(() => _currentIndex = 4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
