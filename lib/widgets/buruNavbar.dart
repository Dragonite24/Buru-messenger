import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:messenger/screens/chat.dart';
import 'package:messenger/screens/news.dart';
import 'package:messenger/screens/userProfile.dart';

import '../main.dart';
import 'constants.dart';

class BuruNavbar extends StatefulWidget {
  final bool isFromSignUp;

  BuruNavbar({
    this.isFromSignUp = false
  }) : super(key: navbarKey);

  @override
  BuruNavbarState createState() => BuruNavbarState();
}

class BuruNavbarState extends State<BuruNavbar> {
  final myKey = new GlobalKey<BuruNavbarState>();

  CupertinoTabController _controller;

  String active(String image) => "images/navbar/active/${image}_active.svg";

  String inactive(String image) => "images/navbar/inactive/$image.svg";

  int _currentIndex = 0;

  double height = 19.35;

  Future<bool> onItemTapped(int index) async {
    if (index == _currentIndex) {
      switch (index) {
        case 0:
          contactsKey.currentState.popUntil((r) => r.isFirst);
          break;
        case 1:
          callsKey.currentState.popUntil((r) => r.isFirst);
          break;
        case 2:
          chatsKey.currentState.popUntil((r) => r.isFirst);
          break;
        case 3:
          homeKey.currentState.popUntil((r) => r.isFirst);
          break;
      }
    } else setState(() => _currentIndex = index);
    return true;
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
    onWillPop: () async => false,
    child: MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: CupertinoTabScaffold(
              controller: _controller,
              key: myKey,
              tabBar: CupertinoTabBar(
                currentIndex: _currentIndex,
                backgroundColor: buruMain,
                items: <BottomNavigationBarItem>[
                  navbarItem("contacts", 0),
                  navbarItem("calls", 1),
                  navbarItem("chats", 2),
                  navbarItem("home", 3)
                ],
                onTap: onItemTapped,
              ),
              tabBuilder: (context, index) {
                CupertinoTabView currentPage;
                switch (index) {
                  case 0:
                    currentPage = CupertinoTabView(
                        navigatorKey: contactsKey,
                        builder: (buildContext) => NewsPage()
                    );
                    break;
                  case 1:
                    currentPage = CupertinoTabView(
                        navigatorKey: callsKey,
                        builder: (context) => NewsPage()
                    );
                    break;
                  case 2:
                    currentPage = CupertinoTabView(
                        navigatorKey: chatsKey,
                        builder: (context) => ChatPage()
                    );
                    break;
                  case 3:
                    currentPage = CupertinoTabView(
                        navigatorKey: homeKey,
                        builder: (buildContext) => UserProfile()
                    );
                    break;
                }
                return currentPage;
              })
        )
  );

  BottomNavigationBarItem navbarItem(
      String image,
      int index
      ) => BottomNavigationBarItem(
          icon: SvgPicture.asset(
              _currentIndex == index
                  ? "assets/icons/navbar/${image}_active.svg"
                  : "assets/icons/navbar/${image}_inactive.svg"
          )
      );
}