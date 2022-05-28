import 'package:core/core.dart';
import 'package:dashboard/route_manager/dashboard_route_manager.dart';
import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:network/network.dart';

import 'dashboard_platform_interface.dart';

class Dashboard {
  /// Instance of Dashboard.
  static Dashboard? _instance;
  static Dashboard get instance {
    _instance ??= Dashboard();
    return _instance!;
  }

  void registerRoutes() {
    Core.instance.registerRoute(
      'dashboard',
      DashboardRouteManager(),
    );
  }

  void navigateTo(BuildContext context, String routeName) {
    Core.instance.customNavigator.navigateTo(context, routeName);
  }

  final testDashboardString = 'Dashboard Module';
  final testCoreString = Core.instance.getModuleName();
  final testNetworkString = Network.instance.getModuleName();
  final testLoginString = Login.instance.getModuleName();

  Future<String?> getPlatformVersion() {
    return DashboardPlatform.instance.getPlatformVersion();
  }
}
//create dashboard route namager -  implements iroute manager
//