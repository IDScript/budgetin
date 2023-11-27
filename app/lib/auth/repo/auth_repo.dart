import 'dart:convert';
import 'package:budgetin/app/constants/url.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository {
  static String mainUrl = 'https://reqres.in';
  var loginUrl = '$mainUrl/api/login';

  Future<bool> hasToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? value = prefs.getString('token');
    print(value);
    if (value != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> persistToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  Future<void> deleteToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }

  Future login(String email, String password) async {
    Response res = await http.post(
      Uri.parse(API.login),
      body: {
        'email': email,
        'password': password,
      },
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
      },
      encoding: Encoding.getByName('utf-8'),
    );
    print(res);
    return res;
  }
}
