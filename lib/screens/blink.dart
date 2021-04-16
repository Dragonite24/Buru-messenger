import 'package:flutter/material.dart';

import 'lol.dart';

class Blink extends StatefulWidget {
  @override
  _BlinkState createState() => _BlinkState();
}

class _BlinkState extends State<Blink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff19401E),
        alignment: Alignment.center,
        child: BlinkinLogo(),
      ),
    );
  }
}
