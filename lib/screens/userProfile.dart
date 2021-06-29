import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:messenger/models/user.dart';

import '../widgets/widgets.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.main,
      // body: GestureDetector(
      //   child: ElevatedButton(
      //     child: Container(
      //       width: 100,
      //       height: 200,
      //     ),
      //     onPressed: () {
      //       Future<User> fetchAlbum() async {
      //         final response = await http
      //             .get(Uri.https('jsonplaceholder.typicode.com', '/users'));
      //         if (response.statusCode == 200) {
      //           return User.fromJson(jsonDecode(response.body));
      //         } else {
      //           throw Exception('Failet to load users');
      //         }
      //       }

      //       fetchAlbum();
      //     },
      //   ),
      // ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < 200; i++) Text('$i'),
            ],
          ),
        ),
      ),
    );
  }
}
