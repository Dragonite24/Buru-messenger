import 'package:flutter/foundation.dart';

class Users {
  final int id;
  final String username;
  final String password;

  Users({
    @required this.id,
    @required this.username,
    @required this.password,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"] as int,
        username: json["username"] as String,
        password: json["password"] as String,
      );
}
