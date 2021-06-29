import 'package:flutter/material.dart';
import 'package:messenger/models/http_service.dart';
import 'package:messenger/models/users.dart';

import '../widgets/widgets.dart';

class NewsPage extends StatefulWidget {
  final BuildContext navbarContext;

  NewsPage({this.navbarContext});
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      //future: httpService.getUsers(),
      builder: (BuildContext context, AsyncSnapshot<List<Users>> snapshot) {
        List<Users> users = snapshot.data;
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            if (snapshot.hasError)
              return new Text('Error: ${snapshot.error}');
            else
              return ListView(
                children: users
                    .map(
                      (Users user) => ListTile(
                        title: Text(
                          user.username,
                          style: TextStyle(color: Clr.text),
                        ),
                      ),
                    )
                    .toList(),
              );
            break;

          default:
            debugPrint("Snapshot " + snapshot.toString());
            return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
