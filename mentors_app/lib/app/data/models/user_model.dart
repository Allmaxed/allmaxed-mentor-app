class User {
  num? id;
  String? name;
  String? status;
  String? type;
  String? email;
  String? createdAt;
  String? updatedAt;

  User({
    this.id,
    this.name,
    this.status,
    this.type,
    this.email,
    this.createdAt,
    this.updatedAt,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'] as num?;
    name = json['name'];
    status = json['status'];
    type = json['type'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['type'] = type;
    data['email'] = email;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
