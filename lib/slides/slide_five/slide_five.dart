import 'package:devfest_web/slides/slide_scaffold/slide_scaffold.dart';
import 'package:flutter/material.dart';

class SlideFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('Transpiled', style: presentationStyle()),
                  Text('Stateful', style: presentationStyle()),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('Compiled', style: presentationStyle()),
                  Text('Stateless', style: presentationStyle()),
                ],
              ),
            ],
          ),
          SizedBox(height: 50),
          Image.asset(
            'Hot_Reload.gif',
            fit: BoxFit.contain,
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}
