import 'package:flutter/material.dart';

Color buruMain = Color(0xFF141518);
Color buruSemi = Color(0xFF1B1B1B);
Color buruGrey = Color(0xFF96A0B5);
Color buruText = Color(0xFFF2F2F2);
Color buruBlue = Color(0xFF246BFE);

Shader linearGradient = LinearGradient(
  colors: <Color>[
    Color(0xff6025F5),
    Color(0xffFF5555),
  ],
).createShader(new Rect.fromLTWH(100.0, 100.0, 500.0, 200.0));

Widget textGradient(text, size) => ShaderMask(
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
