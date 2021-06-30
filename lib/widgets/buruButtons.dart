import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger/widgets/constants.dart';

class BuruButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isOpacity;

  BuruButton({@required this.text, this.onTap, this.isOpacity = true});

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: onTap,
      child: Opacity(
        opacity: isOpacity ? 1 : 0.5,
        child: Container(
          height: 50,
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(color: buruText, fontSize: 18,fontWeight: FontWeight.bold)
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xffFF5555), Color(0xff6025F5)])),
        ),
      ));
}
