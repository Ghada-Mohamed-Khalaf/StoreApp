import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String uri}) async {
    http.Response response = await http.get(Uri.parse(uri));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          "there is  a problem with status code ${response.statusCode}");
    }
  }
}

Future<dynamic> post(
    {required String uri,
    @required dynamic body,
    @required String? token}) async {
  Map<String, String> header = {};
  if (token != null) {
    header.addAll({'Authorization': 'Bearer $token'});

    http.Response response = await http.post(
      Uri.parse(uri),
      body: body,
      headers: header,
    );

    Map<String, dynamic> data = jsonDecode(response.body);
    return data;
//     "title": 'test product',
//     'price': '13.5',
//     'description': 'lorem ipsum set',
//     'image': 'https://i.pravatar.cc',
//     'category': 'electronic',
//   }, headers: {
//     'Accept': 'applaction/json',
//     'Content-Type': 'multipart/form-data',
//   });
// }
// 'Authorization': 'Bearer' //after bearer add token
  }
}
