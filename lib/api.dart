import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:aaaa/user.dart';
import 'package:flutter/material.dart';


class UsersApi {


  static Future<List<User>> getUsersLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('lib/assets/users.json');
    final body = json.decode(data);

    return body.map<User>(User.fromJson).toList();
  }
}