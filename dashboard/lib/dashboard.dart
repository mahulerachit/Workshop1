
import 'dashboard_platform_interface.dart';

class Dashboard {
  Future<String?> getPlatformVersion() {
    return DashboardPlatform.instance.getPlatformVersion();
  }
}
