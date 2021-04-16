import 'dart:async';

import 'package:flutter/material.dart';
import '../widgets.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  startTime() async {
    var duration = new Duration(seconds: 10);
    return new Timer(duration, route);
  }

  route() {
    // если зареган то на главную
    if (false)
      Navigator.pushReplacementNamed(context, '/login');
    else
      Navigator.pushReplacementNamed(context, '/register1');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.main,
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 500),
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Clr.textGradient('Buru', 60.0),

                Image.asset("assets/logo.png", scale: 7),

                // SizedBox(height: 32),
                // Clr.outlineBtn('Вход', Login(), context),
                // Clr.outlineBtn('Регистрация', OnBoardingPage(), context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
