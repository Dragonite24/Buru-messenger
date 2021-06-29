import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messenger/widgets/buruButtons.dart';
import 'package:messenger/widgets/buruScaffold.dart';
import 'package:messenger/widgets/buruTextfield.dart';

class EnterNewPassword extends StatefulWidget {
  final String email;
  final bool isFromAccount;

  EnterNewPassword({
    this.email,
    this.isFromAccount
});

  @override
  _EnterNewPasswordState createState() => _EnterNewPasswordState();
}

class _EnterNewPasswordState extends State<EnterNewPassword> with SingleTickerProviderStateMixin{

  String errorPassword1 = "", errorPassword2 = "";

  TextEditingController password = TextEditingController(),
      password2 = TextEditingController();

  @override
  Widget build(BuildContext context) => BuruScaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: SvgPicture.asset(
                        "images/back.svg"
                    )
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                    "Введите новый пароль",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black
                    )
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                    "Создайте надежный и уникальный пароль для защиты своей учетной записи",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.grey
                    )
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                BuruTextField(
                    text: "Новый пароль",
                    controller: password,
                    icon: "password",
                    hintText: "Введите новый пароль"
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                BuruTextField(
                    text: "Повторить пароль",
                    controller: password2,
                    icon: "password",
                    hintText: "Ещё раз введите новый пароль"
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                BuruButton(
                  text: "Сохранить",
                  onTap: () {
                    try {
                      // HttpService().changePassword(
                      //     widget.email,
                      //     password.text,
                      //     password2.text
                      // ).then((value) {
                      //   if (value) {
                      //     Navigator.pop(context);
                      //     if (!widget.isFromAccount) {
                      //       Navigator.pop(context);
                      //       Navigator.pop(context);
                      //     }
                      //   } else {
                      //     var snackBar = SnackBar(content: Text("Что-то пошло не так"));
                      //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      //   }
                      // });
                    }
                    catch (e) {
                      var snackBar = SnackBar(
                          content: Text("Что-то пошло не так")
                      );
                      ScaffoldMessenger.of(context)
                          .showSnackBar(snackBar);
                    }
                  }
                )
              ]
          )
      )
  );
}