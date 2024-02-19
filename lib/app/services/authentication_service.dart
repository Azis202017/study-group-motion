import 'dart:convert';

import 'package:get_storage/get_storage.dart';

import '../constant/constanta.dart';
import 'package:http/http.dart' as http;

class AuthenticationService {
  Future<bool> login({required String email, required String password}) async {
    GetStorage storage = GetStorage();
    try {
      Uri url = Uri.parse('$apiUrl/login');
      Map<String, dynamic> body = {
        'email': email,
        'password': password,
      };
      var response = await http.post(
        url,
        body: body,
      );

      if (response.statusCode == 200) {
        String accessToken = jsonDecode(response.body)['access_token'];
        storage.write('token', accessToken);
        return true;
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> register({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      Uri url = Uri.parse('$apiUrl/register');
      Map<String, dynamic> body = {
        'name': name,
        'email': email,
        'password': password,
      };
      var response = await http.post(
        url,
        body: body,
      );
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
