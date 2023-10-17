
import 'package:day01_login_signup/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LoginSignUp());
}

class LoginSignUp extends StatelessWidget {
  const LoginSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
