import 'package:shared_preferences/shared_preferences.dart';

// ignore: constant_identifier_names
const String TOKEN = "token";
// ignore: constant_identifier_names
const String USER_ID = "userID";
// ignore: constant_identifier_names
const String USERNAME = "username";
// ignore: constant_identifier_names
const String PASSWORD = "password";

class UserInfo {
  Future<void> setToken(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(TOKEN, value);
  }

  Future<String?> getToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(TOKEN);
  }

  Future<void> setUserID(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(USER_ID, value);
  }

  Future<String> getUserID() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(USER_ID).toString();
  }

  Future<void> setUsername(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(USERNAME, value);
  }

  Future<String> getUsername() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(USERNAME).toString();
  }

  Future<void> setPassword(String value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(PASSWORD, value);
  }

  Future<String> getPassword() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(PASSWORD).toString();
  }

  Future<void> logout() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.clear();
  }
}
