import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dashboard/dashboard_method_channel.dart';

void main() {
  MethodChannelDashboard platform = MethodChannelDashboard();
  const MethodChannel channel = MethodChannel('dashboard');

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
