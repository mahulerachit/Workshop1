import 'package:flutter/material.dart';
import 'dart:async';

import 'package:dashboard/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initPlatformState();

    Dashboard.instance.registerRoutes();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(),
      ),
      home: const DashboardWidget(),
    );
  }
}

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboard = Dashboard.instance;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Test string from: ${dashboard.testDashboardString}'),
            Text('Test string from: ${dashboard.testCoreString}'),
            Text('Test string from: ${dashboard.testNetworkString}'),
            Text('Test string from: ${dashboard.testLoginString}'),
            TextButton(
                onPressed: () {
                  dashboard.navigateTo(context, 'dashboard.dashboard-screen');
                },
                child: const Text('Navigate to Dashboard')),
          ],
        ),
      ),
    );
  }
}
