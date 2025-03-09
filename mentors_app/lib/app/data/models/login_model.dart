import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  String token;
  String message;

  Login({
    required this.token,
    required this.message,
  });

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        token: json["token"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "message": message,
      };
}
