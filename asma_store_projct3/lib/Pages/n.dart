import 'package:asma_store_projct3/Pages/Favorite.dart';
import 'package:asma_store_projct3/Pages/Home.dart';
import 'package:asma_store_projct3/Pages/LogIn.dart';
import 'package:asma_store_projct3/Pages/Profile.dart';
import 'package:asma_store_projct3/Pages/SingIn.dart';
import 'package:asma_store_projct3/Pages/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageNav extends StatefulWidget {
  const PageNav({super.key});

  @override
  State<PageNav> createState() => _PageNavState();
}

class _PageNavState extends State<PageNav> {
  int myIndex = 0;
  var navTo = [Home(), Favorite(), shoppingCart(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: navTo[myIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        backgroundColor: Color.fromARGB(255, 57, 55, 55),
        selectedItemColor: Color.fromARGB(255, 217, 174, 32),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/1946488.png")), label: "Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/1077035.png")),
              label: "Favorite"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/2832495.png")),
              label: "Bag"),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/1077063.png")),
              label: "Profile"),
        ],
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 5,
    );
  }
}
