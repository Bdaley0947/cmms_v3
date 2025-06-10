import 'package:flutter/material.dart';
import 'navigation/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Circle Red X',
      routerConfig: AppRouter().config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
