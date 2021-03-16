import 'package:flutter/material.dart';

import '../../../navBar.dart';
import '../../../widgets.dart';

class Register3 extends StatefulWidget {
  @override
  _Register3State createState() => _Register3State();
}

class _Register3State extends State<Register3> {
  var _nickname = TextEditingController();
  var _email = TextEditingController();
  var _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.main,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 32, left: 28, right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Clr.text,
                          size: 26,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Text(
                      "Step 3/3",
                      style: TextStyle(
                        color: Clr.text,
                        fontSize: 18,
                      ),
                    ),
                    IconButton(icon: Icon(null), onPressed: null),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Image.asset('assets/reg3.png', scale: 5),
                    Text("Create Account",
                        style: TextStyle(
                            color: Clr.text,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text(
                      "   Please provide following\ndetails for your new account",
                      style: TextStyle(
                          color: Color(0xFFF2F2F2),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          wordSpacing: 1.5,
                          height: 1.5),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: Column(
                        children: [
                          TextField(
                            controller: _nickname,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 1.0),
                              labelText: 'Nickname',
                              labelStyle: TextStyle(color: Colors.grey),
                              suffix: IconButton(
                                icon: Icon(Icons.close_rounded),
                                onPressed: _nickname.clear,
                                color: Colors.grey,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Clr.blue),
                              ),
                            ),
                            style: TextStyle(color: Clr.text),
                          ),
                          TextField(
                            controller: _email,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 1.0),
                              labelText: 'E-mail',
                              labelStyle: TextStyle(color: Colors.grey),
                              suffix: IconButton(
                                icon: Icon(Icons.close_rounded),
                                onPressed: _email.clear,
                                color: Colors.grey,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Clr.blue),
                              ),
                            ),
                            style: TextStyle(color: Clr.text),
                          ),
                          TextField(
                            obscureText: true,
                            controller: _password,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 1.0),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.grey),
                              suffix: IconButton(
                                icon: Icon(Icons.close_rounded),
                                onPressed: _password.clear,
                                color: Colors.grey,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Clr.blue),
                              ),
                            ),
                            style: TextStyle(color: Clr.text),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: null,
                          activeColor: Clr.blue,
                        ),
                        RichText(
                          text: TextSpan(
                            text:
                                'By creating your account you agree with to \nour ',
                            style: TextStyle(
                                color: Color(0xFFF2F2F2),
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                wordSpacing: 1.5,
                                height: 1.5),
                            children: [
                              TextSpan(
                                text: 'Teams and Conditions',
                                style: TextStyle(
                                    color: Clr.blue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    wordSpacing: 1.5,
                                    height: 1.5),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 50),
                    Container(
                      height: 60,
                      width: 300,
                      child: FlatButton(
                        onPressed: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => BottomNavBar(),
                            ),
                          ),
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
            ],
          ),
        ),
      ),
    );
  }
}
