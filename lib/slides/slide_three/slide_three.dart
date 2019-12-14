import 'package:devfest_web/slides/slide_scaffold/slide_scaffold.dart';
import 'package:devfest_web/slides/slide_three/slide_three_items.dart';
import 'package:flutter/material.dart';

class SlideThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 160, left: 20),
      child: ListView.builder(
        itemCount: slideThreeTopics.length,
        itemBuilder: (_, int index) {
          final SlideThreeItems _topics = slideThreeTopics[index];
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Text(_topics.topics, style: presentationStyle()),
          );
        },
      ),
    );
  }
}
