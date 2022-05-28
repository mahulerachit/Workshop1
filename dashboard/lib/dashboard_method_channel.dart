import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dashboard_platform_interface.dart';

/// An implementation of [DashboardPlatform] that uses method channels.
class MethodChannelDashboard extends DashboardPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dashboard');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
