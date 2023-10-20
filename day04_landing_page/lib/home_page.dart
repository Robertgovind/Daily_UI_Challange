import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        bottomNavigationBar: Row(
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
      ),
    );
  }
}
