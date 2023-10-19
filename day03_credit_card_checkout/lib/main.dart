import 'package:day03_credit_card_checkout/home.dart';
import 'package:day03_credit_card_checkout/paymet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Credit card chechout",
      theme: ThemeData(
        colorScheme: ColorScheme.highContrastDark(
          background: ColorSwatch(
            0xF021DFA,
            {const Color.fromARGB(198, 15, 2, 29): Colors.pink},
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "Home",
      routes: {
        "Home": (context) => const Home(),
        "Payment": (context) => const Payment()
      },
    );
  }
}
