import 'package:flutter/material.dart';

import '../myColors.dart';
import '../navBar.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailcontroller = TextEditingController();
  bool isValidEmail = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.main,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                constraints: BoxConstraints(maxWidth: 350),
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Вход в профиль",
                      style: TextStyle(fontSize: 32, color: Clr.text),
                    ),

                    /// Email form input
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'example@email.com',
                        labelText: 'E-mail',
                        labelStyle: TextStyle(color: Colors.grey),
                      ),
                      // autovalidateMode: AutovalidateMode.always,
                      validator: (input) => input.regExpressionEmail()
                          ? null
                          : "Некорректная электронная почта",
                    ),

                    /// Password form input
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Пароль',
                        labelStyle: TextStyle(color: Colors.grey),
                        suffix: Icon(Icons.search),
                      ),
                      // autovalidateMode: AutovalidateMode.always,

                      validator: (input) =>
                          input.regExpressionPass() ? null : "Неверный пароль",
                    ),
                    SizedBox(height: 30),

                    /// Login button after checking your email and password
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 50.0, right: 50.0, bottom: 32),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: OutlineButton(
                          highlightedBorderColor: Colors.grey,
                          onPressed: () => {
                            if (_formKey.currentState.validate())
                              {
                                // If the form is valid
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => BottomNavBar(),
                                  ),
                                ),
                              }
                          },
                          borderSide: BorderSide(color: Colors.white, width: 3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            'Войти!',
                            style: TextStyle(fontSize: 19, color: Clr.text),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

extension EmailValidator on String {
  bool regExpressionEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension PasswordValidator on String {
  bool regExpressionPass() {
    return RegExp(r'^(?=.*?[a-z])(?=.*?[0-9]).{8,}$').hasMatch(this);
  }
}
