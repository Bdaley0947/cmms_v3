import 'package:flutter/material.dart';

class ModuleDataTable extends StatelessWidget {
  final String moduleName;

  const ModuleDataTable({super.key, required this.moduleName});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          '$moduleName Data Table',
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
