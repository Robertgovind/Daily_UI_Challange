import 'package:day01_login_signup/logInScreen.dart';
import 'package:day01_login_signup/signUp.dart';
import 'package:flutter/material.dart';
 
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'logInScreen',
      routes: {
        'logInScreen': (context) => LogInScreen(),
        'signUp': (context) => SignUp()
      },
    ),
  );
}
