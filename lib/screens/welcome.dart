import 'dart:async';

import 'package:flutter/material.dart';
import 'package:messenger/screens/start/login.dart';
import 'package:messenger/screens/start/register/phoneNumber.dart';
import '../widgets/widgets.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    // если зареган то на главную
    if (false)
      Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
              builder: (BuildContext context) => Login()));
    else
      Navigator.push<void>(
          context,
          MaterialPageRoute<void>(
              builder: (BuildContext context) => PhoneNumber()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
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
                Image.asset("assets/logo.png", scale: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
