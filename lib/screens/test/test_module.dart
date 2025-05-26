import 'package:flutter/material.dart';
import '../../widgets/module_shell.dart';

class TestModule extends StatelessWidget {
  const TestModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headers = ['ID', 'Name', 'Status'];
    final data = [
      ['1', 'Pump A', 'Active'],
      ['2', 'Pump B', 'Inactive'],
      ['3', 'Valve X', 'Under Review'],
    ];

    return ModuleShell(
      title: 'Test Module',
      headers: headers,
      data: data,
      rowBuilder: (row) => row.map((cell) => Text(cell)).toList(),
    );
  }
}
