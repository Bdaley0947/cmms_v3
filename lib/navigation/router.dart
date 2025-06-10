import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class AppRouter {
  RouterConfig<Object> config() {
    return RouterConfig(
      routerDelegate: _routerDelegate(),
    );
  }

  RouterDelegate<Object> _routerDelegate() {
    return RootRouterDelegate();
  }
}

class RootRouterDelegate extends RouterDelegate<Object> with ChangeNotifier, PopNavigatorRouterDelegateMixin<Object> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        const MaterialPage(child: HomeScreen()),
      ],
      onPopPage: (route, result) => route.didPop(result),
    );
  }

  @override
  Future<void> setNewRoutePath(Object configuration) async => null;
}
