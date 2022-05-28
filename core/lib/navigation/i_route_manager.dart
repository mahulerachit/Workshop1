import 'package:flutter/material.dart';

abstract class IRouteManager {
  Widget? getRoute(String viewName);
}
