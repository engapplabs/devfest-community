import 'package:devfest_web/slides/slide_scaffold/slide_scaffold.dart';
import 'package:flutter/material.dart';

class SlideEight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Don\'t get too desperated!',
            style: presentationStyle(),
          ),
          SizedBox(height: 50),
          Text('EngApp & Flutter has a solution!', style: presentationStyle()),
        ],
      ),
    );
  }
}
