import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:projeto_c214/Model/user.dart';
import 'package:projeto_c214/Model/userLogin.dart';
import 'package:projeto_c214/services/tokenStorage.dart';

class UserService {
  final String apiUrl = "https://fintrack-api.vercel.app/";
  final TokenStorage tokenStorage = TokenStorage();

  Future<bool> registerUser(User request) async {
    final url = Uri.parse('$apiUrl/user/register');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        "x-api-key": "79a4576e-89d2-470d-ae76-c7b6t546c8nh"
      },
      body: json.encode(request.toJson()),
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception(
          'Failed to register user, status: ${response.statusCode}');
    }
  }

  Future<bool> loginUser(UserLogin request) async {
    final url = Uri.parse('$apiUrl/user/login');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        "x-api-key": "79a4576e-89d2-470d-ae76-c7b6t546c8nh"
      },
      body: json.encode(request.toJson()),
    );

    if (response.statusCode == 200) {
      final userLoginResponse =
          UserLoginResponse.fromJson(json.decode(response.body));
      await tokenStorage.saveToken(userLoginResponse.accessToken);
      return true;
    } else {
      throw Exception('Failed to login user, status: ${response.statusCode}');
    }
  }

  Future<void> logout() async {
    await tokenStorage.removeToken();
  }
}
