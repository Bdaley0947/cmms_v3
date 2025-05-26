import 'package:flutter/material.dart';

class PMModule extends StatelessWidget {
  const PMModule({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset('assets/icons/pms.png'),
      iconSize: 48,
      tooltip: 'PMs',
      onPressed: () {
        // TODO: Navigate to PM screen
      },
    );
  }
}
