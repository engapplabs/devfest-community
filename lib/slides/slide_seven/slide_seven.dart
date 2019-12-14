import 'package:devfest_web/slides/slide_scaffold/slide_scaffold.dart';
import 'package:flutter/material.dart';

class SlideSeven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Platform Channels - ', style: presentationStyle()),
          //SizedBox(height: 50),
          Image.asset('PlatformChannels.png',
              height: 400,
              width: 400,
              fit: BoxFit.cover,
              alignment: Alignment.center)
        ],
      ),
    );
  }
}
