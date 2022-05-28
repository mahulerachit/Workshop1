import 'package:core/navigation/i_route_manager.dart';
import 'package:dashboard/screens/dashboard_screen.dart';
import 'package:flutter/widgets.dart';

class DashboardRouteManager extends IRouteManager {
  static const dashboardScreen = 'dashboard-screen';
  @override
  Widget? getRoute(String viewName) {
    if (viewName == dashboardScreen) return const DashboardScreen();
    return null;
  }
}
