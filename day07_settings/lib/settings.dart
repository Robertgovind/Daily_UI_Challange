import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 16, 16),
        shadowColor: const Color.fromARGB(255, 18, 16, 16),
        elevation: 1,
        title: Row(
          children: [
            const Image(
              image: AssetImage("assets/logo.jpg"),
              height: 29,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 65, 66, 65)),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 10,
                      child: Text(
                        "R",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                    ),
                    const Text(
                      "24 999",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow),
                      child: const Text(
                        "Deposit",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/profile.png"),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 16, 16, 16),
      drawer: const Drawer(
        backgroundColor: Colors.red,
      ),
    );
  }
}
