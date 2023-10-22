import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: const Color.fromARGB(200, 157, 209, 237),
                height: 200,
                width: double.infinity,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Madelynn Griffin",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.checkmark_rectangle_fill,
                            color: Color.fromARGB(201, 242, 182, 2),
                          ),
                          Text(
                            "Gold member",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(201, 242, 182, 2),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Phone",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "+5999-661-6161",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Mail",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "marin@gmail.com",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(),
                      BottomCard(
                        leadIcon: Icons.dark_mode,
                        text: "Dark mode",
                        lagIcon: Icons.circle,
                        isFirst: true,
                      ),
                      Divider(),
                      BottomCard(
                        leadIcon: Icons.credit_card,
                        text: "Cards",
                      ),
                      Divider(),
                      BottomCard(
                        leadIcon: Icons.person,
                        text: "Profile details",
                      ),
                      Divider(),
                      BottomCard(
                        leadIcon: Icons.settings,
                        text: "Settings",
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: MediaQuery.sizeOf(context).width / 2 - 60,
            top: 140,
            child: const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomCard extends StatelessWidget {
  const BottomCard(
      {super.key,
      required this.leadIcon,
      required this.text,
      this.lagIcon = Icons.arrow_forward_ios_outlined,
      this.isFirst = false});
  final leadIcon;
  final text;
  final lagIcon;
  final isFirst;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadIcon),
      title: Text(
        text,
        style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
      ),
      hoverColor: const Color.fromARGB(255, 187, 147, 147),
      trailing: isFirst
          ? const Image(
              height: 35,
              image: AssetImage(
                "assets/icon.webp",
              ),
            )
          : Icon(
              lagIcon,
              color: Colors.black,
            ),
    );
  }
}
