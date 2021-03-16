import 'dart:convert';

import 'package:http/http.dart';
import 'package:messenger/models/users.dart';

class HttpService {
  final String postsUrl = 'http://localhost:8000/users.json';

  Future<List<Users>> getUsers() async {
    Response response = await get(postsUrl);

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      List<Users> users =
          body.map((dynamic item) => Users.fromJson(item)).toList();

      return users;
    } else {
      throw ("Can`t get users");
    }
  }
}
