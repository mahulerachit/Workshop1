import 'network_platform_interface.dart';

class Network {
  /// Instance of Network.
  static Network? _instance;
  static Network get instance {
    _instance ??= Network();
    return _instance!;
  }

  String getModuleName() => 'Network Module';

  Future<String?> getPlatformVersion() {
    return NetworkPlatform.instance.getPlatformVersion();
  }
}
