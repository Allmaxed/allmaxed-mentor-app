import 'dart:convert';

Register registerFromJson(String str) => Register.fromJson(json.decode(str));

String registerToJson(Register data) => json.encode(data.toJson());

class Register {
  String token;
  String message;
  User user;

  Register({
    required this.token,
    required this.message,
    required this.user,
  });

  factory Register.fromJson(Map<String, dynamic> json) => Register(
        token: json["token"],
        message: json["message"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "message": message,
        "user": user.toJson(),
      };
}

class User {
  String name;
  String email;
  String phone;
  String status;
  String type;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.status,
    required this.type,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        status: json["status"],
        type: json["type"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "phone": phone,
        "status": status,
        "type": type,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
      };
}
