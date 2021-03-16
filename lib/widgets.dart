import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Clr {
  static final main = Color(0xFF141518);
  static final semi = Color(0xFF1B1B1B);
  static final blue = Color(0xFF2F80ED);

  static final text = Color(0xFFFFFFFF);
  static final semiText = Color(0xFFB8B8B8);

  static final navBar = Color(0xFF1D1E22);
  static final navBarUnselected = Color(0xFFD3D3D3);

  static final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Color(0xff6025F5),
      Color(0xffFF5555),
    ],
  ).createShader(new Rect.fromLTWH(10.0, 100.0, 500.0, 200.0));

  static Widget textGradient(text, size) => ShaderMask(
        shaderCallback: (Rect bounds) {
          final gradient = LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [Color(0xff6025F5), Color(0xffFF5555)],
          );
          return gradient.createShader(Offset.zero & bounds.size);
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: size,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  static Widget outlineBtn(txt, sign, context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60.0, right: 60.0, bottom: 12),
      child: Container(
        height: 50,
        width: double.infinity,
        child: FlatButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => sign)),
          child: Text(txt, style: TextStyle(color: Clr.text, fontSize: 18)),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xffFF5555), Color(0xff6025F5)])),
      ),
    );
  }
}
