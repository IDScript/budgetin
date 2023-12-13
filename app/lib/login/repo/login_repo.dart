import 'package:budgetin/login/login.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class APILogin {
  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'authorization': 'Basic c3R1ZHlkb3RlOnN0dWR5ZG90ZTEyMw=='
  };

  Future<UserModel> login(LoginModel loginModel) async {
    final response = await http.post(
      Uri.parse('https://dev.kanggara.me/api/login'),
      // headers: {'Content-Type': 'application/json'},
      // headers: headers,
      body: loginModel.toJson(),
    );

    UserModel responseData = UserModel.fromRawJson(response.body);

    if (response.statusCode == 200) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', responseData.token);
    }
    return responseData;
  }
}
