import 'package:flutter/cupertino.dart';
import 'package:messenger/models/codeInput/verify_code_input.dart';
import 'package:messenger/screens/start/register/createAccount.dart';
import 'package:messenger/widgets/buruScaffold.dart';
import 'package:flutter/material.dart';
import 'package:messenger/widgets/constants.dart';

class Confirmation extends StatefulWidget {
  final String phone;

  Confirmation({this.phone});
  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation>
    with SingleTickerProviderStateMixin {
  TextEditingController email = TextEditingController(),
      name = TextEditingController(),
      password = TextEditingController(),
      username = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return WillPopScope(
        onWillPop: () async => false,
        child: BuruScaffold(
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(Icons.arrow_back_ios_new_rounded,
                                  size: 24, color: buruText)),
                          Text("Step 2/3",
                              style: TextStyle(
                                color: buruText,
                                fontSize: 18,
                              )),
                          Container(width: 48),
                        ],
                      ),
                      Image.asset('assets/reg2.png', scale: width * 0.015),
                      Text("Verify Account!",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 36,
                              color: buruText)),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text:
                                  'Enter 4-digit Code code we have sent to at\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  wordSpacing: 2,
                                  height: 1.5,
                                  fontSize: 13,
                                  color: buruText),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '+7' + widget.phone,
                                    style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: buruBlue)),
                              ])),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      VerifyCodeInput(onComplete: (String value) {
                        setState(() {
                          Navigator.push<void>(
                              context,
                              MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      CreateAccount()));
                        });
                        // HttpService()
                        //     .enterCodeAndGetToken(widget.controller, value,
                        //         context, widget.isSignup)
                        //     .then((value) {
                        //   if (value != null)
                        //     Navigator.of(context).push(MaterialPageRoute(
                        //         builder: (context) => widget.isSignup
                        //             ? RelifeNavbar(isFromSignUp: true)
                        //             : EnterNewPassword(
                        //                 email: widget.controller,
                        //                 isFromAccount: false)));
                        //   else {
                        //     var snackBar =
                        //         SnackBar(content: Text("Что-то пошло не так"));
                        //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        //   }
                        // });
                      }),
                    ]))));
  }
}
