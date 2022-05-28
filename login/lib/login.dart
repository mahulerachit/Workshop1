import 'login_platform_interface.dart';

class Login {
  /// Instance of Core.
  static Login? _instance;
  static Login get instance {
    _instance ??= Login();
    return _instance!;
  }

  String getModuleName() => 'Login Module';

  Future<String?> getPlatformVersion() {
    return LoginPlatform.instance.getPlatformVersion();
  }
}
