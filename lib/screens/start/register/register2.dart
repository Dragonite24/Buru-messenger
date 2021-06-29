import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';

class Register2 extends StatefulWidget {
  @override
  _Register2State createState() => _Register2State();
}

class _Register2State extends State<Register2> {
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
                padding:
                    EdgeInsets.only(top: 32, left: 28, right: 28, bottom: 12),
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
                      "Step 2/3",
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
                    Image.asset('assets/reg2.png', scale: 5),
                    SizedBox(height: 15),
                    Text("Verify Account!",
                        style: TextStyle(
                            color: Clr.text,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(
                      "Enter 4-digit code we have sent to as",
                      style: TextStyle(
                          color: Color(0xFFF2F2F2),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          wordSpacing: 1.5,
                          height: 1.5),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '+7 512 349-26-04',
                      style: TextStyle(
                          color: Clr.blue,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          wordSpacing: 1.5,
                          height: 1.5),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Color(0xff3a3d43),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                '*',
                                style: TextStyle(color: Clr.blue, fontSize: 40),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Color(0xff3a3d43),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                '*',
                                style: TextStyle(color: Clr.blue, fontSize: 40),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Color(0xff3a3d43),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                '*',
                                style: TextStyle(color: Clr.blue, fontSize: 40),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Clr.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                '0',
                                style: TextStyle(color: Clr.text, fontSize: 40),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      height: 60,
                      width: 300,
                      child: FlatButton(
                        onPressed: () =>
                            {Navigator.pushNamed(context, '/register3')},
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
