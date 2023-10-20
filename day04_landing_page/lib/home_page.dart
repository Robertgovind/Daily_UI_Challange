import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home,
              size: 35,
            ),
            Icon(
              Icons.search,
              size: 35,
            ),
            Icon(
              Icons.shopping_cart,
              size: 35,
            ),
            Icon(
              CupertinoIcons.heart_fill,
              size: 35,
            ),
            Icon(
              Icons.settings,
              size: 35,
            ),
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              top: 135,
              right: 10,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink)),
                onPressed: () {},
                child: const Text(
                  "Popular",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.apps_rounded),
                    Stack(
                      children: [
                        Positioned(
                            top: 0,
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: Color.fromARGB(255, 2, 124, 6),
                            )),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/image1.webp"),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Hi,Emily",
                      style: TextStyle(fontSize: 18),
                    ),
                    Container(
                      height: 40,
                      child: Image(image: AssetImage("assets/emoji.webp")),
                    )
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Welcome back",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ImageContainer(
                        image: "assets/women1.webp",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ImageContainer(
                        image: "assets/women2.webp",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ImageContainer(
                        image: "assets/women3.webp",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ImageContainer(
                        image: "assets/women4.webp",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ContanerList(
                        image: "assets/gifts.webp",
                        maintext: "Gifts",
                        subtext: "+60 articles",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ContanerList(
                        image: "assets/clothes.webp",
                        maintext: "Clothes",
                        subtext: "+500 articles",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ContanerList(
                        image: "assets/football.webp",
                        maintext: "Sports",
                        subtext: "+100 articles",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ContanerList(
                        image: "assets/electronics.webp",
                        maintext: "Electronics",
                        subtext: "+60 articles",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.image,
  });
  final image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
    );
  }
}

class ContanerList extends StatelessWidget {
  const ContanerList({
    super.key,
    required this.image,
    required this.maintext,
    required this.subtext,
  });
  final image;
  final maintext;
  final subtext;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 35,
          ),
          Text(
            maintext,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(subtext),
        ],
      ),
    );
  }
}
