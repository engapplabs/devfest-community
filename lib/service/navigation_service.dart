import 'package:flutter/material.dart';

final NavigationService navService = NavigationService();

class NavigationService {
  static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  Future<dynamic> pushNamed(String route, {Object arguments}) async {
    return navigationKey.currentState.pushNamed(
      route,
      arguments: arguments,
    );
  }

  Future<dynamic> pushScreen(Route<dynamic> route) async {
    return navigationKey.currentState.push(route);
  }

  Future<dynamic> pushReplacement(String route, {Object arguments}) async {
    return navigationKey.currentState.pushNamedAndRemoveUntil(
      route,
      (Route<dynamic> route) => false,
      arguments: arguments,
    );
  }

  Future<dynamic> goBack({dynamic result}) async {
    return navigationKey.currentState.pop<dynamic>(result);
  }

  bool canPop() {
    return navigationKey.currentState.canPop();
  }
}
