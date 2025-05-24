import 'package:flutter/material.dart';

class ModuleButton extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const ModuleButton({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label, style: const TextStyle(color: Colors.white)),
      tileColor: selected ? Colors.blue[700] : Colors.transparent,
      onTap: onTap,
    );
  }
}
