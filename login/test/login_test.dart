import 'package:flutter_test/flutter_test.dart';
import 'package:login/login.dart';
import 'package:login/login_platform_interface.dart';
import 'package:login/login_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLoginPlatform 
    with MockPlatformInterfaceMixin
    implements LoginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LoginPlatform initialPlatform = LoginPlatform.instance;

  test('$MethodChannelLogin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLogin>());
  });

  test('getPlatformVersion', () async {
    Login loginPlugin = Login();
    MockLoginPlatform fakePlatform = MockLoginPlatform();
    LoginPlatform.instance = fakePlatform;
  
    expect(await loginPlugin.getPlatformVersion(), '42');
  });
}
