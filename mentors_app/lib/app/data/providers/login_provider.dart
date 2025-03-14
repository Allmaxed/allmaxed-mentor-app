import 'dart:convert';
import 'dart:developer';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mentors_app/app/data/consts/token.dart';
import 'package:mentors_app/app/data/models/login_model.dart';

class LoginProvider extends GetConnect {
  final String apiBaseUrl = dotenv.env['local_host'] ?? 'nil';
  Future<(bool, String)> loginApiCall(String email, String password) async {
    try {
      log(apiBaseUrl);
      final response = await http.post(
        Uri.parse('$apiBaseUrl/auth/login'),
        body: {'email': email, 'password': password},
      );
      final responseData = jsonDecode(response.body);
      log(responseData.toString());
      if (responseData['message'] == "Successfully logged in") {
        final loginData = loginFromJson(response.body);
        authToken.setter(loginData.token);
        return (true, loginData.message);
      } else {
        final String errorMessage = responseData['message'];
        return (false, errorMessage);
      }
    } catch (e) {
      log(e.toString());
      return (false, 'Something Went Wrong!');
    }
  }
}
