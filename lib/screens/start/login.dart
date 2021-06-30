import 'package:flutter/material.dart';
import 'package:messenger/widgets/buruButtons.dart';
import 'package:messenger/widgets/buruNavbar.dart';
import 'package:messenger/widgets/buruScaffold.dart';
import 'package:messenger/widgets/buruTextfield.dart';
import 'package:messenger/widgets/constants.dart';

import '../../widgets/widgets.dart';
import '../../navBar.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailcontroller = TextEditingController();
  final _passcontroller = TextEditingController();

  bool isValidEmail = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return BuruScaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 45, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.05),
                Image.asset('assets/house.png', scale: 1),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: "Welcome ",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Back!",
                        style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()..shader = linearGradient),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text("Sign in to continue",
                    style: TextStyle(color: Color(0xFFF2F2F2), fontSize: 14)),
                SizedBox(height: height * 0.02),
                BuruTextField(controller: _emailcontroller, text: 'E-mail'),
                BuruTextField(controller: _passcontroller, text: 'Password'),
                SizedBox(height: height * 0.02),

                /// Login button after checking your email and password
                BuruButton(
                    text: 'Sign In',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BuruNavbar()));
                    }),
                SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text: "Don’t have an account?",
                    style: TextStyle(
                        fontSize: 14,
                        color: buruText),
                    children: <TextSpan>[
                      TextSpan(
                        text: " Create account",
                        style: TextStyle(
                            fontSize: 14,
                            color: buruBlue),
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
    );
  }
}

// extension EmailValidator on String {
//   bool regExpressionEmail() {
//     return RegExp(
//             r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
//         .hasMatch(this);
//   }
// }

// extension PasswordValidator on String {
//   bool regExpressionPass() {
//     return RegExp(r'^(?=.*?[a-z])(?=.*?[0-9]).{8,}$').hasMatch(this);
//   }
// }
