import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dashboard_method_channel.dart';

abstract class DashboardPlatform extends PlatformInterface {
  /// Constructs a DashboardPlatform.
  DashboardPlatform() : super(token: _token);

  static final Object _token = Object();

  static DashboardPlatform _instance = MethodChannelDashboard();

  /// The default instance of [DashboardPlatform] to use.
  ///
  /// Defaults to [MethodChannelDashboard].
  static DashboardPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DashboardPlatform] when
  /// they register themselves.
  static set instance(DashboardPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
