import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 122, 30, 213),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: const Row(
          children: [
            SizedBox(
              width: 50,
            ),
            Text(
              "Profile",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 122, 30, 213),
      body: ListView(
        children: [
          Column(
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/saipallavi.webp"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Sai Pallavi",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                "9824803556",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 196, 57, 103),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.call,
                        size: 28,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 196, 57, 103),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.video_call,
                        size: 28,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 196, 57, 103),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.message,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                color: Colors.transparent,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Call History",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 201, 166, 166),
                      ),
                    ),
                  ],
                ),
              ),
              const CallLog(
                callStatus: "Incoming call",
                phone: "9854873556",
                time: "4:00 pm",
              ),
              const CallLog(
                callStatus: "Outgoing call",
                phone: "9824803652",
                time: "10:00 am",
              ),
              const CallLog(
                callStatus: "Outgoing call",
                phone: "9824865984",
                time: "9:40 pm",
              ),
              const CallLog(
                callStatus: "Incoming call",
                phone: "9824326547",
                time: "4:20 pm",
              ),
              const CallLog(
                callStatus: "Incoming call",
                phone: "9823265556",
                time: "6:00 am",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CallLog extends StatelessWidget {
  const CallLog({
    super.key,
    required this.callStatus,
    required this.phone,
    required this.time,
  });
  final callStatus;
  final phone;
  final time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      color: const Color.fromRGBO(0, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                callStatus,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                phone,
                style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 201, 166, 166),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Text(
            time,
            style: const TextStyle(
              color: Color.fromARGB(255, 201, 166, 166),
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
