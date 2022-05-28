
import 'login_platform_interface.dart';

class Login {
  Future<String?> getPlatformVersion() {
    return LoginPlatform.instance.getPlatformVersion();
  }
}
