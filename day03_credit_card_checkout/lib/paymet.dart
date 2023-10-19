import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(198, 15, 2, 29),
        leading: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Payment details",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                    image: AssetImage("assets/creditCard4.png"),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CardText(
              text: "Card number",
            ),
            const Card(
              hint: "Enter card number",
              secure: false,
            ),
            const SizedBox(
              height: 20,
            ),
            const CardText(
              text: "Name on card",
            ),
            const Card(
              hint: "Enter your name",
              secure: false,
            ),
            const SizedBox(
              height: 20,
            ),
            const CardText(
              text: "Expiry date",
            ),
            const Card(
              hint: "31/12/2024",
              secure: false,
            ),
            const SizedBox(
              height: 20,
            ),
            const CardText(
              text: "Security code",
            ),
            const Card(
              hint: "4-digit code",
              secure: true,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink)),
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, "Home");
                });
              },
              child: Container(
                width: 100,
                child: const Center(
                  child: Text(
                    "Proceed",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.hint,
    required this.secure,
  });
  final hint;
  final secure;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: secure,
      decoration: InputDecoration(
        labelStyle: const TextStyle(fontSize: 20),
        filled: true,
        fillColor: const Color.fromARGB(255, 199, 136, 136),
        border: InputBorder.none,
        hintText: hint,
        contentPadding: const EdgeInsets.all(10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 227, 43, 104), width: 3),
        ),
      ),
    );
  }
}

class CardText extends StatelessWidget {
  const CardText({
    super.key,
    required this.text,
  });
  final text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
    );
  }
}
