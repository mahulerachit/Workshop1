import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'login_platform_interface.dart';

/// An implementation of [LoginPlatform] that uses method channels.
class MethodChannelLogin extends LoginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('login');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
