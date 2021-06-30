import 'package:flutter/material.dart';
import 'package:messenger/widgets/buruButtons.dart';
import 'package:messenger/widgets/buruNavbar.dart';
import 'package:messenger/widgets/buruScaffold.dart';
import 'package:messenger/widgets/buruTextfield.dart';
import 'package:messenger/widgets/constants.dart';

import '../../../navBar.dart';
import '../../../widgets/widgets.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  var _nickname = TextEditingController();
  var _email = TextEditingController();
  var _password = TextEditingController();
  bool _isAgree = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BuruScaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 45, vertical: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back_ios_new_rounded,
                          size: 24, color: buruText)),
                  Text("Step 3/3",
                      style: TextStyle(
                        color: buruText,
                        fontSize: 18,
                      )),
                  Container(width: 48),
                ],
              ),
              Image.asset('assets/reg3.png', scale: width * 0.015),
              Text("Create Account",
                  style: TextStyle(
                      color: buruText,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text(
                "   Please provide following\ndetails for your new account",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    wordSpacing: 2,
                    height: 1.5,
                    fontSize: 13,
                    color: buruText),
              ),
              SizedBox(height: 15),
              Container(
                child: Column(
                  children: [
                    BuruTextField(controller: _nickname, text: 'Nickname'),
                    BuruTextField(controller: _email, text: 'E-mail'),
                    BuruTextField(controller: _password, text: 'Password'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: _isAgree,
                    onChanged: (bool _newVal) {
                      setState(() {
                        _isAgree = _newVal;
                      });
                    },
                    activeColor: Clr.blue,
                  ),
                  Container(
                    width: width - 140,
                    child: RichText(
                      text: TextSpan(
                        text: 'By creating your account you agree with to our ',
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                            color: Color(0xFFF2F2F2),
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            wordSpacing: 1.5,
                            height: 1.5),
                        children: [
                          TextSpan(
                            text: 'Teams and Conditions',
                            style: TextStyle(
                                color: Clr.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                wordSpacing: 1.5,
                                height: 1.5),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              BuruButton(
                  text: 'Next',
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BuruNavbar()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
