import 'package:devfest_web/slides/slide_one/slide_one.dart';
import 'package:devfest_web/slides/slide_scaffold/slide_scaffold.dart';
import 'package:flutter/material.dart';

class FadeRoute extends PageRouteBuilder<void> {
  FadeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(opacity: animation, child: child),
        );
  final Widget page;
}

class SlideLeftRoute extends PageRouteBuilder<void> {
  SlideLeftRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return page;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

  final Widget page;
}

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/slide_scaffold':
        return FadeRoute(page: SlideScaffold());
      case '/slide_one':
        return FadeRoute(page: SlideOne());
    }
    return null;
  }
}
