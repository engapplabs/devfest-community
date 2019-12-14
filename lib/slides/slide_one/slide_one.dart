import 'package:devfest_web/slides/slide_one/slide_items.dart';
import 'package:flutter/material.dart';

class SlideOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: topics.length,
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, int index) {
        final SlideItems _topic = topics[index];
        return Image.asset(
          _topic.topics,
          fit: BoxFit.contain,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width / 2,
        );
      },
    );
  }
}
