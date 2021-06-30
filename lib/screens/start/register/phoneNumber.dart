import 'package:flutter/material.dart';
import 'package:messenger/screens/start/register/confirmation.dart';
import 'package:messenger/widgets/buruButtons.dart';
import 'package:messenger/widgets/buruScaffold.dart';
import 'package:messenger/widgets/buruTextfield.dart';
import 'package:messenger/widgets/constants.dart';
import '../../../widgets/widgets.dart';

class PhoneNumber extends StatefulWidget {
  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _phoneController = TextEditingController();
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
              children: <Widget>[
                Text("Step 1/3",
                    style: TextStyle(
                      color: buruText,
                      fontSize: 18,
                    )),
                Image.asset('assets/reg1.png', scale: width * 0.013),
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
                      wordSpacing: 2,
                      height: 1.5),
                ),
                SizedBox(height: 20),
                Text(
                  "Russian Federation",
                  style: TextStyle(
                      color: buruBlue,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 10),
                BuruPhoneField(
                  controller: _phoneController,
                ),
                SizedBox(height: 50),

                /// Login button after checking your email and password
                BuruButton(
                  text: 'Next',
                  onTap: () {
                    Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) => Confirmation(phone: _phoneController.text)));
                  },
                ),
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
