/* import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import '../helpers/user_info.dart';

class LoginService {
  final String apiUrl =
      'https://6497526683d4c69925a3978d.mockapi.io/miemiebrownie/pegawai';

  Future<bool> login(String username, String password) async {
    bool isLogin = false;
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> loginData =
          jsonDecode(response.body) as List<dynamic>;

      for (var data in loginData) {
        if (data.containsKey('username') &&
            data.containsKey('password') &&
            data.containsKey('token') &&
            data.containsKey('id')) {
          if (data['username'] == username && data['password'] == password) {
            await UserInfo().setToken(data['token']);
            await UserInfo().setUserID(data['id'].toString());
            await UserInfo().setUsername(username);
            isLogin = true;
            break;
          }
        }
      }
    }
    return isLogin;
  }
} */

//MASIH BINGUNG LOGINNYA

import '../helpers/user_info.dart';

class LoginService {
  Future<bool> login(String username, String password) async {
    bool isLogin = false;
    if (username == 'admin' && password == 'admin') {
      await UserInfo().setToken("admin");
      await UserInfo().setUserID("1");
      await UserInfo().setUsername("admin");
      isLogin = true;
    }
    return isLogin;
  }
}
