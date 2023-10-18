import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 122, 30, 213),
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 122, 30, 213),
        title: const Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "Contact List",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
            const Column(
            children: [
              Contacts(
                name: "Sai Pallavi",
                phone: "9824653215",
                imageUrl: "assets/saipallavi.webp",
              ),
              Contacts(
                name: "Dark Spider",
                phone: "9824655689",
                imageUrl: "assets/dark.jpg",
              ),
              Contacts(
                name: "Dark Jocker",
                phone: "9824652515",
                imageUrl: "assets/jocker.jpg",
              ),
              Contacts(
                name: "Spiderman",
                phone: "98246352998",
                imageUrl: "assets/spider.jpg",
              ),
              Contacts(
                name: "Tammanah",
                phone: "9824653265",
                imageUrl: "assets/tammana.jpg",
              ),
              Contacts(
                name: "Tanjiro",
                phone: "9824653359",
                imageUrl: "assets/tanjiro.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Contacts extends StatelessWidget {
  const Contacts({
    super.key,
    required this.name,
    required this.phone,
    this.imageUrl,
  });
  final name;
  final phone;
  final imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageUrl),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  phone,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 201, 166, 166),
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.call,
            color: const Color.fromARGB(255, 196, 57, 103),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.message,
            color: const Color.fromARGB(255, 196, 57, 103),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.more_vert,
          )
        ],
      ),
    );
  }
}
