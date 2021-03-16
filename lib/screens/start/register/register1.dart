import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../widgets.dart';

class Register1 extends StatefulWidget {
  @override
  _Register1State createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.main,
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                constraints: BoxConstraints(maxWidth: 400),
                padding: const EdgeInsets.symmetric(
                    vertical: 40.0, horizontal: 25.0),
                child: Column(
                  children: <Widget>[
                    Text("Step 1/3",
                        style: TextStyle(
                          color: Clr.text,
                          fontSize: 18,
                        )),
                    Image.asset('assets/reg1.png'),
                    Text("Registration",
                        style: TextStyle(
                            color: Clr.text,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(
                      "Please enter your phone number. We will send \n      you 4-digit code to verify you account",
                      style: TextStyle(
                          color: Color(0xFFF2F2F2),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          wordSpacing: 1.5,
                          height: 1.5),
                    ),

                    SizedBox(height: 20),
                    Text(
                      "Russian Federation",
                      style: TextStyle(
                          color: Clr.blue,
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter phone number',
                        labelStyle: TextStyle(color: Colors.grey),
                        suffix: Icon(
                          Icons.close_rounded,
                          color: Colors.grey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Clr.blue),
                        ),
                      ),
                      style: TextStyle(color: Clr.text),
                    ),
                    SizedBox(height: 50),

                    /// Login button after checking your email and password
                    Container(
                      height: 60,
                      width: double.infinity,
                      child: FlatButton(
                        onPressed: () => {
                          if (_formKey.currentState.validate())
                            {
                              // If the form is valid
                              Navigator.pushNamed(context, '/register2')
                            }
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(color: Clr.text, fontSize: 18),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Color(0xffFF5555), Color(0xff6025F5)])),
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
