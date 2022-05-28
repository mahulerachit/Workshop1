import 'package:flutter_test/flutter_test.dart';
import 'package:dashboard/dashboard.dart';
import 'package:dashboard/dashboard_platform_interface.dart';
import 'package:dashboard/dashboard_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDashboardPlatform 
    with MockPlatformInterfaceMixin
    implements DashboardPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DashboardPlatform initialPlatform = DashboardPlatform.instance;

  test('$MethodChannelDashboard is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDashboard>());
  });

  test('getPlatformVersion', () async {
    Dashboard dashboardPlugin = Dashboard();
    MockDashboardPlatform fakePlatform = MockDashboardPlatform();
    DashboardPlatform.instance = fakePlatform;
  
    expect(await dashboardPlugin.getPlatformVersion(), '42');
  });
}
