import 'package:flutter/material.dart';

import 'myColors.dart';
import 'screens/chat.dart';
import 'screens/news.dart';
import 'screens/userProfile.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _seletedItem = 0;

  /// Страницы,
  var _pages = [
    NewsPage(),
    ChatPage(),
    UserProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _pages[_seletedItem],
      ),
      backgroundColor: Clr.main,

      /// Нижняя навигационная панель
      extendBody: true,

      /// Убирает задний фон
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 40, right: 40),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(42),
            topLeft: Radius.circular(42),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Clr.navBar,
            unselectedItemColor: Clr.navBarUnselected,
            selectedIconTheme: IconThemeData(color: Colors.white),
            selectedItemColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border, size: 30), label: "News"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline, size: 30),
                  label: "Chats"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, size: 30), label: "Profile"),
            ],
            currentIndex: _seletedItem,
            onTap: (index) {
              setState(
                () {
                  _seletedItem = index;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
