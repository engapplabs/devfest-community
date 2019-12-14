import 'package:devfest_web/components/general.dart';
import 'package:devfest_web/service/navigation_service.dart';
import 'package:flutter/material.dart';

class PresentationCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/Front.png',
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          NextPage(callback: () => navService.pushNamed('/slide_scaffold'))
        ],
      ),
    );
  }
}
