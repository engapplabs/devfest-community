import 'package:flutter/material.dart';

class SlideFour extends StatefulWidget {
  @override
  _SlideFourState createState() => _SlideFourState();
}

class _SlideFourState extends State<SlideFour>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (_, __) {
        return Opacity(
          opacity: _animation.value,
          child: Image.asset(
            'Dart.png',
            height: 300,
            width: 300,
            alignment: Alignment.center,
          ),
        );
      },
    );
  }
}
