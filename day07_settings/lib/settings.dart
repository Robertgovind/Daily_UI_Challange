import 'package:day07_settings/utilities.dart';
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
        leading: IconButton(
          onPressed: () {},
          icon: const Image(
            color: Colors.white,
            image: AssetImage("assets/bars.png"),
          ),
        ),
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      child: Text(
                        "R",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                    ),
                    Text(
                      "24 999",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    SmallContainer(
                      text: "Deposit",
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
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 77, 71, 71),
                ),
                Text(
                  "SETTINGS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SmallContainer(
                  text: "SAVE EDITS",
                  bgColor: Color.fromARGB(255, 27, 50, 28),
                  textColor: Color.fromARGB(255, 4, 248, 12),
                ),
              ],
            ),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage(
              "assets/profile.png",
            ),
            radius: 60,
            backgroundColor: Color.fromARGB(255, 40, 34, 34),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 10,
              ),
              SmallContainer(
                text: "Upload new",
                textColor: Color.fromARGB(255, 103, 99, 99),
                bgColor: bgColor,
              ),
              SmallContainer(
                text: "Random avator",
                textColor: Color.fromARGB(255, 103, 99, 99),
                bgColor: bgColor,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromARGB(255, 65, 66, 65)),
                  borderRadius: BorderRadius.circular(20),
                  color: bgColor),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "First Name",
                          style: TextStyle(
                              color: Color.fromARGB(255, 103, 99, 99),
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        Text(
                          "Savannah",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Color.fromARGB(255, 103, 99, 99)),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Last Name",
                          style: TextStyle(
                              color: Color.fromARGB(255, 103, 99, 99),
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                        Text(
                          "Nguyen",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Color.fromARGB(255, 103, 99, 99)),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Odd formats",
                          style: TextStyle(
                              color: Color.fromARGB(255, 103, 99, 99),
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromARGB(255, 65, 66, 65)),
                              borderRadius: BorderRadius.circular(20),
                              color: bgColor),
                          child: const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Row(
                              children: [
                                SmallContainer(text: "Decimal-2.5"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Fraction-5/2",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromARGB(255, 65, 66, 65)),
                  borderRadius: BorderRadius.circular(20),
                  color: bgColor),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Last Name",
                          style: TextStyle(
                              color: Color.fromARGB(255, 103, 99, 99),
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                        Text(
                          "Nguyen",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SmallContainer extends StatelessWidget {
  const SmallContainer(
      {super.key,
      required this.text,
      this.textColor = Colors.black,
      this.bgColor = Colors.yellow});
  final text;
  final textColor;
  final bgColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 65, 66, 65)),
          borderRadius: BorderRadius.circular(20),
          color: bgColor),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.bold, color: textColor),
      ),
    );
  }
}
