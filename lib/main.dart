import 'package:flutter/material.dart';
import 'package:messenger/screens/start/login.dart';
import 'screens/blink.dart';
import 'screens/lol.dart';
import 'screens/start/register/register1.dart';
import 'screens/start/register/register2.dart';
import 'screens/start/register/register3.dart';
import 'screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buru',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/blink': (context) => Blink(),
        '/register1': (context) => Register1(),
        '/register2': (context) => Register2(),
        '/register3': (context) => Register3(),
        '/login': (context) => Login(),
        //'/contacts': (context) =>
      },

      /// Для перехода на страницу
      // Navigator.pushReplacementNamed(context, '/')

      /// Положить страницу в стек
      // onPressed: () {
      // Navigator.pushNamed(context, '/');

      /// Выкинуть из стека
      // Navigator.pop(context);
    );
  }
}
