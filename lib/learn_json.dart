import 'dart:convert';

import 'package:dart_json_serialization/user.dart';

void main() {
  String jsonString = """
{
  "name": "bibit",
  "email": "bibit@gmail.com"
}
""";

//json Decode
  final userMap = jsonDecode(jsonString) as Map<String, dynamic>;
  final user = User.fromMap(userMap);
  print('Nama saya ${user.name}');
  String userEncode = jsonEncode(user);
  print('userEncode adalah : ${user.email}');

//Jika ingin menggunakan json encode menggunakan package tambahan
// flutter pub add json_annotation dev:build_runner dev:json_serializable

  print('Data user: ${user.name}');
  // print('Email user: ${user['email']}');
}
