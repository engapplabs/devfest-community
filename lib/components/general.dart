import 'package:flutter/material.dart';

class DefaultAnimatedSwitcher extends StatelessWidget {
  const DefaultAnimatedSwitcher({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 350),
      reverseDuration: const Duration(milliseconds: 350),
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
      child: child,
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key key, this.callback}) : super(key: key);

  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: FlatButton(
        child: Icon(Icons.arrow_forward_ios),
        onPressed: callback,
        hoverColor: Colors.green,
      ),
    );
  }
}

class PreviousPage extends StatelessWidget {
  const PreviousPage({Key key, this.callback}) : super(key: key);

  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 20,
      child: FlatButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: callback,
        hoverColor: Colors.amber,
      ),
    );
  }
}
