import 'package:core/navigation/i_route_manager.dart';
import 'package:flutter/material.dart';

class CustomNavigator {
  void registerNavigator(String id, IRouteManager iRouteManager) {
    navigationMap.update(
      id,
      (value) => iRouteManager,
      ifAbsent: () => iRouteManager,
    );
  }

  void navigateTo(BuildContext context, String routeName) {
    final routes = routeName.split('.');

    final packageName = routes[0];
    final route = routes[1];

    final widget = navigationMap[packageName]?.getRoute(route);
    if (widget != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => widget)));
    }
  }

  Map<String, IRouteManager> navigationMap = {};
}
