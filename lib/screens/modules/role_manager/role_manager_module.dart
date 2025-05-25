import 'package:flutter/material.dart';

class RoleManagerModule extends StatelessWidget {
  const RoleManagerModule({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(24),
      children: const [
        Text(
          'Role Manager',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        ListTile(
          title: Text('Technician'),
          subtitle: Text('Can close work orders and update asset status.'),
          trailing: Text('Assigned'),
        ),
        Divider(),
        ListTile(
          title: Text('Supervisor'),
          subtitle: Text('Can approve PMs and override asset status.'),
          trailing: Text('Assigned'),
        ),
      ],
    );
  }
}
