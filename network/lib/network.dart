
import 'network_platform_interface.dart';

class Network {
  Future<String?> getPlatformVersion() {
    return NetworkPlatform.instance.getPlatformVersion();
  }
}
