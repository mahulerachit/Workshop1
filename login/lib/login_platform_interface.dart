import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'login_method_channel.dart';

abstract class LoginPlatform extends PlatformInterface {
  /// Constructs a LoginPlatform.
  LoginPlatform() : super(token: _token);

  static final Object _token = Object();

  static LoginPlatform _instance = MethodChannelLogin();

  /// The default instance of [LoginPlatform] to use.
  ///
  /// Defaults to [MethodChannelLogin].
  static LoginPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LoginPlatform] when
  /// they register themselves.
  static set instance(LoginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
