import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:mentors_app/app/data/consts/token.dart';
import 'package:mentors_app/app/data/models/register_model.dart';

class RegisterProvider extends GetConnect {
  final String apiBaseUrl = dotenv.env['local_host'] ?? 'nil';
  Future<(bool, String)> registerApiCall(
      {required String email,
      required String password,
      required String phone,
      required String name}) async {
    try {
      log(apiBaseUrl);
      final response = await http.post(
        Uri.parse('$apiBaseUrl/auth/register'),
        body: {
          "name": name,
          "email": email,
          "password": password,
          "phone": phone,
          "password_confirmation": password
        },
      );
      final responseData = jsonDecode(response.body);
      log(responseData.toString());
      if (response.statusCode == 200) {
        final registerData = registerFromJson(response.body);
        storageService.saveToken(registerData.token);
        return (true, registerData.message);
      } else if (response.statusCode == 500) {
        final String errorMessage = "Server issues!";
        return (false, errorMessage);
      } else if (response.statusCode == 401) {
        final String errorMessage = "Attempt Failed!";
        return (false, errorMessage);
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
