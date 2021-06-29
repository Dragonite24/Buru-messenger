import 'package:flutter/material.dart';
import 'package:messenger/screens/start/login.dart';
import 'package:messenger/widgets/buruNavbar.dart';
import 'screens/blink.dart';
import 'screens/start/register/phoneNumber.dart';
import 'screens/start/register/register2.dart';
import 'screens/start/register/register3.dart';
import 'screens/welcome.dart';

void main() {runApp(MyApp());}

final GlobalKey<BuruNavbarState> navbarKey = GlobalKey<BuruNavbarState>();
final GlobalKey<NavigatorState> mainKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> mapKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> ratingKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> settingsKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buru',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Welcome(),
      // routes: {
      //   '/': (context) => Welcome(),
      //   '/blink': (context) => Blink(),
      //   '/register1': (context) => Register1(),
      //   '/register2': (context) => Register2(),
      //   '/register3': (context) => Register3(),
      //   '/login': (context) => Login(),
      // },
    );
  }
}
