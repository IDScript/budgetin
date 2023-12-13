import 'dart:convert';

class LoginModel {
  final String email;
  final String password;
  final String device;

  LoginModel({
    required this.email,
    required this.password,
    this.device = 'BudgetinApp',
  });

  factory LoginModel.fromRawJson(String str) =>
      LoginModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        email: json['email'],
        password: json['password'],
        device: json['device'],
      );

  Map<String, dynamic> toJson() => {
        'email': email,
        'device': device,
        'password': password,
      };
}
