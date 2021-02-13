class User {
  final int id;
  final String name;
  final String username;
  final String email;

  User({this.id, this.name, this.username, this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
    );
  }
}
