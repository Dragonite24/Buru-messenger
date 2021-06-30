import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

class BuruTextField extends StatelessWidget {
  final String text;
  final String icon;
  final String hintText;
  final String errorText;
  final TextEditingController controller;
  final ValueChanged onChanged;
  final bool isPhone;
  final bool isPassword;

  BuruTextField(
      {this.text = "",
      this.icon = "",
      this.hintText = "",
      this.errorText = "",
      this.controller,
      this.onChanged,
      this.isPhone = false,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) =>
      Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width - 90,
              child: TextField(
                controller: controller,
                style: TextStyle(color: buruText),
                decoration: InputDecoration(
                  labelText: text,
                  labelStyle: TextStyle(color: Colors.grey),
                  suffix: IconButton(
                    icon: Icon(Icons.close_rounded),
                    onPressed: controller.clear,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: buruBlue),
                  ),
                ),
                
              ),
            )
          ]),
          Text(errorText,
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: Colors.red))
        ]),
      );
}

class BuruPhoneField extends StatelessWidget {
  final String text;
  final String icon;
  final String hintText;
  final String errorText;
  TextEditingController controller;
  final ValueChanged onChanged;
  final bool isPhone;
  final bool isPassword;

  BuruPhoneField(
      {this.text = "",
      this.icon = "",
      this.hintText = "",
      this.errorText = "",
      this.controller,
      this.onChanged,
      this.isPhone = false,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            width: double.infinity,
            child: Row(children: [
              SvgPicture.asset("assets/icons/3.svg",
                  color: buruGrey, width: 20, height: 20),
              SizedBox(width: 13),
              Container(
                  width: MediaQuery.of(context).size.width - 125,
                  child: TextField(
                      controller: controller,
                      onChanged: onChanged,
                      decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          suffixIcon: IconButton(
                              onPressed: () {
                                controller.text = null;
                              },
                              icon: Icon(
                                Icons.clear_rounded,
                                color: buruGrey,
                                size: 24,
                              )),
                          prefixText: '+7 (',
                          hintText: "___) ___-__-__",
                          hintStyle: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: buruGrey))))
            ])),
        Text(errorText,
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Colors.red))
      ]);
}
