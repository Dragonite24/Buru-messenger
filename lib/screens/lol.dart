import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class BlinkinLogo extends StatefulWidget {
  @override
  _BlinkinLogoState createState() => _BlinkinLogoState();
}

class _BlinkinLogoState extends State<BlinkinLogo>
    with SingleTickerProviderStateMixin {
  /// MIXIN
  AnimationController _controller;

  @override
  void initState() {
    //_animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _controller.repeat(
      reverse: true,
    );
    return FadeTransition(
        opacity: _controller,
        // your logo or button
        child: Image.asset('assets/logo1.png'));
  }
}
