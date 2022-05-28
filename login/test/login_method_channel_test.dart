import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login/login_method_channel.dart';

void main() {
  MethodChannelLogin platform = MethodChannelLogin();
  const MethodChannel channel = MethodChannel('login');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
