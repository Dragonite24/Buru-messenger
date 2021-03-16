import 'package:flutter/material.dart';

import '../../widgets.dart';
import '../../navBar.dart';

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
          child: Stack(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 300),
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/house.png'),
                        SizedBox(height: 20),
                        RichText(
                          text: TextSpan(
                            text: "Welcome ",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Back!",
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..shader = Clr.linearGradient),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Sign in to continue",
                          style:
                              TextStyle(color: Color(0xFFF2F2F2), fontSize: 10),
                        ),

                        /// Email form input
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'example@email.com',
                            labelText: 'E-mail',
                            labelStyle: TextStyle(color: Colors.grey),
                            suffix: IconButton(
                              icon: Image.asset(
                                'assets/icons/Union.svg',
                                color: Colors.grey,
                              ),
                              onPressed: null,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Clr.blue),
                            ),
                          ),

                          style: TextStyle(color: Clr.text),
                          // autovalidateMode: AutovalidateMode.always,
                          validator: (input) => input.regExpressionEmail()
                              ? null
                              : "Invalid email address",
                        ),

                        /// Password form input
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.grey),
                            suffix: IconButton(
                              icon: Image.asset(
                                'assets/icons/Union.svg',
                                color: Colors.grey,
                              ),
                              onPressed: null,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Clr.blue),
                            ),
                          ),
                          style: TextStyle(color: Clr.text),

                          // autovalidateMode: AutovalidateMode.always,

                          validator: (input) => input.regExpressionPass()
                              ? null
                              : "Invalid password",
                        ),
                        SizedBox(height: 30),

                        /// Login button after checking your email and password
                        Container(
                          height: 50,
                          width: double.infinity,
                          child: FlatButton(
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
                            child: Text("Sign In",
                                style:
                                    TextStyle(color: Clr.text, fontSize: 18)),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xffFF5555),
                                    Color(0xff6025F5)
                                  ])),
                        ),
                        SizedBox(height: 15),
                        RichText(
                          text: TextSpan(
                            text: "Don’t have an account?",
                            style: TextStyle(fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                text: " Create account",
                                style: TextStyle(
                                  color: Clr.blue,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
