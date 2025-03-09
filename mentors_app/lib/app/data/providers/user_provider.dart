import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mentors_app/app/data/models/user_model.dart';

class UserProvider extends GetConnect {
  Future<void> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse(dotenv.env['local_host']!),
        body: {
          'email': email,
          'password': password,
        },
      );

      final responseData = jsonDecode(response.body);
      if (responseData['message'] == "Successfully logged in") {
      } else {}
    } catch (e) {
    } finally {}
  }
}
