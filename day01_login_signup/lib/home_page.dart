import 'package:day01_login_signup/login.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 88, 241),
      body: Column(
        children: [
          Image(
            image: AssetImage("assets/home.webp"),
          ),
          Text(
            "Wherever the art of Medicine is loved, there is also a love of Humanity",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          ElevatedButton(
            onPressed: () {
              LogIn();
            },
            child: Text("Get Started"),
          ),
        ],
      ),
    );
  }
}
