// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/cupertino.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.id,
    this.username,
    this.password,
  });

  int id;
  String username;
  String password;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "password": password,
      };
}

class ChatUsers {
  String name;
  String messageText;
  String imageURL;
  String time;
  ChatUsers(
      {@required this.name,
      @required this.messageText,
      @required this.imageURL,
      @required this.time});
}
