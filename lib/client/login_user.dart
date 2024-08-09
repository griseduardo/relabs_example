import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:relabs_example/models/user.dart';

Future<User> loginUser(String email, String password) async {
  final response = await http.post(
    Uri.parse('http://192.168.0.247:3000/auth/sign_in'),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: json.encode(<String, String>{
      'email': email,
      'password': password
    }),
  );

  if (response.statusCode == 200) {
    return User.fromJson(
      response.headers['access-token'],
      response.headers['client'],
      response.headers['uid']
    );
  } else {
    throw Exception('Failed to authenticate.');
  }
}
