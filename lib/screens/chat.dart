import 'package:flutter/material.dart';

import '../myColors.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.main,
      body: CustomScrollView(
        primary: true,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Clr.semi,
            title: Text('Сообщения'),
            floating: true,
            leading: IconButton(
              icon: const Icon(
                Icons.person_search_outlined,
              ),
              onPressed: () {
                // Scaffold.of(context).openDrawer();
              },
              tooltip: 'Добавить друга',
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search_outlined),
                tooltip: 'Найти диалог',
                onPressed: () {
                  // handle the press
                },
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                for (int i = 0; i < 200; i++) Text('$i'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
