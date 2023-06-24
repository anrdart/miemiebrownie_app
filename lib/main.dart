import 'package:flutter/material.dart';
import '/helpers/user_info.dart';
import '/ui/beranda.dart';
import '/ui/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<String?> _checkToken() async {
    final token = await UserInfo().getToken();
    return token;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: _checkToken(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          if (snapshot.hasData && snapshot.data != null) {
            return const MaterialApp(
              title: "Miemie Brownie",
              debugShowCheckedModeBanner: false,
              home: Beranda(),
            );
          } else {
            return const MaterialApp(
              title: "Miemie Brownie",
              debugShowCheckedModeBanner: false,
              home: Login(),
            );
          }
        }
      },
    );
  }
}
