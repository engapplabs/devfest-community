import 'package:devfest_web/slides/slide_two/slide_two_items.dart';
import 'package:flutter/material.dart';

class SlideTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: slideTwoTopics.length,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index) {
          final SlideTwoItems _topic = slideTwoTopics[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              _topic.item,
              height: 400,
              width: 350,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          );
        },
      ),
    );
  }
}
