import 'package:core/navigation/i_route_manager.dart';

import 'core_platform_interface.dart';
import 'navigation/custom_navigator.dart';

class Core {
  /// Instance of Core.
  static Core? _instance;
  static Core get instance {
    _instance ??= Core();
    return _instance!;
  }

  final CustomNavigator _customNavigator = CustomNavigator();
  CustomNavigator get customNavigator => _customNavigator;

  void registerRoute(String id, IRouteManager iRouteManager) {
    _customNavigator.registerNavigator(id, iRouteManager);
  }

  String getModuleName() => 'Core Module';

  Future<String?> getPlatformVersion() {
    return CorePlatform.instance.getPlatformVersion();
  }
}
