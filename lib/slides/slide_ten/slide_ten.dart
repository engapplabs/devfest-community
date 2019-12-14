import 'package:devfest_web/slides/slide_scaffold/slide_scaffold.dart';
import 'package:flutter/material.dart';

class SlideTen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Does Flutter/Dart runs on a browser or Desktop?\n\nIf yes, what can we achieve?',
        textAlign: TextAlign.center,
        style: presentationStyle(),
      ),
    );
  }
}
