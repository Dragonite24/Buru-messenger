import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuruTextField extends StatelessWidget {
  final String text;
  final String icon;
  final String hintText;
  final String errorText;
  final TextEditingController controller;
  final ValueChanged onChanged;
  final bool isPhone;
  final bool isPassword;

  BuruTextField({
    this.text = "",
    this.icon = "",
    this.hintText = "",
    this.errorText = "",
    this.controller,
    this.onChanged,
    this.isPhone = false,
    this.isPassword = false
  });

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
          text,
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black
          )
      ),
      SizedBox(height: 12),
      Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 19.2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color(0xffEAEFF3)
              )
          ),
          child: Row(
              children: [
                SvgPicture.asset(
                    "images/text_field/$icon.svg",
                    width: 15.75,
                    height: 12.38
                ),
                SizedBox(width: 13.2),
                Container(
                    width: MediaQuery.of(context).size.width - 101,
                    child: TextField(
                        controller: controller,
                        onChanged: onChanged,
                        obscureText: isPassword,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixText: isPhone ? '+7 (' : null,
                            hintText: isPhone ? "___) ___-__-__" : hintText,
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.grey
                            )
                        )
                    )
                )
              ]
          )
      ),
      Text(
          errorText,
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 12,
              color: Colors.red
          )
      )
    ]
  );
}