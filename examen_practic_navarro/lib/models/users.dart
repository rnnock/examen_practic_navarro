import 'dart:convert';

class User {
  String address;
  String email;
  String name;
  String phone;
  String? photo;
  String? id;

  User({
    required this.address,
    required this.email,
    required this.name,
    required this.phone,
    this.photo,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        address: json["address"],
        email: json["email"],
        name: json["name"],
        phone: json["phone"],
        photo: json["photo"],
      );

  Map<String, dynamic> toMap() => {
        "address": address,
        "email": email,
        "name": name,
        "phone": phone,
        "photo": photo,
      };
}
