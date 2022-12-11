import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/View/HomePage/HomePageView.dart';
import 'package:teatime/View/Profile/Profile.dart';
import 'package:teatime/constant.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../Cart/Cart.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  List<Widget> bottomNavigationBarItem = [
    HomePageView(),
    Cart(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: greenColor.withOpacity(0.5),
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: primaryTextColor,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("2",
                      style: TextStyle(
                          color: primaryTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                    color: primaryTextColor,
                  ),
                ],
              )
            ],
          ),
          Icon(
            Icons.person,
            size: 30,
            color: primaryTextColor,
          ),
        ],
      ),
      body: bottomNavigationBarItem.elementAt(_selectedIndex),
    );
  }
}
