import 'package:devfest_web/components/routes.dart';
import 'package:devfest_web/presentation_cover/presentation_cover.dart';
import 'package:devfest_web/service/navigation_service.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevFest',
      home: Scaffold(body: PresentationCover()),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterGenerator.generateRoute,
      navigatorKey: NavigationService.navigationKey,
    );
  }
}
