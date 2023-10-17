import 'package:day01_login_signup/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Login_SignUp());
}

class Login_SignUp extends StatelessWidget {
  const Login_SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
