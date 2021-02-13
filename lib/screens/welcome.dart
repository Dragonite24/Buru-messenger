import 'package:flutter/material.dart';
import 'package:messenger/screens/login.dart';

import '../myColors.dart';
import 'onBoarding.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Widget outlineBtn(txt, sign) {
      return Padding(
        padding: const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 32),
        child: Container(
          height: 50,
          width: double.infinity,
          child: OutlineButton(
            highlightedBorderColor: Colors.grey,
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => sign)),
            borderSide: BorderSide(color: Colors.white, width: 3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              txt,
              style: TextStyle(fontSize: 19, color: Clr.text),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Clr.main,
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 400),
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Добро пожаловать',
                    style: TextStyle(fontSize: 32, color: Clr.text)),
                SizedBox(height: 32),
                outlineBtn('Вход', Login()),
                outlineBtn('Регистрация', OnBoardingPage()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  loginBtn(context) {}
}
