import 'package:flutter/material.dart';

import 'widgets/widgets.dart';
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
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Clr.navBar,
          unselectedItemColor: Clr.navBarUnselected,
          selectedIconTheme: IconThemeData(color: Colors.white),
          selectedItemColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border, size: 30), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline, size: 30), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 30), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, size: 30), label: ""),
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
    );
  }
}
