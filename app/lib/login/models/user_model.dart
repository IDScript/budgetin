import 'dart:convert';

class UserModel {
  final String token;
  final UserDataModel data;

  UserModel({
    required this.data,
    required this.token,
  });

  factory UserModel.fromRawJson(String str) =>
      UserModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        data: UserDataModel.fromJson(json['data']),
        token: json['token'],
      );

  Map<String, dynamic> toJson() => {
        'data': data.toJson(),
        'token': token,
      };
}

class UserDataModel {
  final int id;
  final String name;
  final String email;
  final dynamic level;
  final dynamic status;

  UserDataModel({
    required this.id,
    required this.name,
    required this.email,
    required this.level,
    required this.status,
  });

  factory UserDataModel.fromRawJson(String str) =>
      UserDataModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        level: json['level'],
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'level': level,
        'status': status,
      };
}
