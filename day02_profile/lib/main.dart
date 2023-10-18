import 'package:day02_profile/contact_list.dart';
import 'package:day02_profile/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "Home",
      routes: {
        "Home": (context) => Profile(),
        "Contact List": (context) => ContactList()
      },
      home: Profile(),
    );
  }
}
