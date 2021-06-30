import 'package:flutter/material.dart';
import 'package:messenger/widgets/buruNavbar.dart';
import 'screens/welcome.dart';

void main() {runApp(MyApp());}

final GlobalKey<BuruNavbarState> navbarKey = GlobalKey<BuruNavbarState>();
final GlobalKey<NavigatorState> contactsKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> callsKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> chatsKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> homeKey = GlobalKey<NavigatorState>();

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
