import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.blue,
            child: const Image(
              image: AssetImage(
                "assets/back.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "404",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 140,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                color: Colors.transparent,
                height: 30,
                child: const Center(
                  child: Text(
                    "Opps! Page not found",
                    style: TextStyle(fontSize: 23, color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(15),
                child: Text(
                  "The page you were looking for doesn't exist. You may have mistyped the address or the page may have been removed",
                  style: TextStyle(fontSize: 19, color: Colors.black),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink)),
                onPressed: () {},
                child: Text("Back to Home"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
