import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class User {
  final String loginId;
  final String password;

  User({
    required this.loginId,
    required this.password,
  });
  factory User.fromJson(Map<String, dynamic> json) => User(
        loginId: json["loginId"],
        password: json["password"],
      );
}
