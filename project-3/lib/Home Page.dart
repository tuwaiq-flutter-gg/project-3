import 'package:flutter/material.dart';
import 'package:project_3/Assest/Colors.dart';
import 'package:project_3/Pages/Cards.dart';
import 'package:project_3/Pages/Home.dart';
import 'package:project_3/Pages/Market.dart';
import 'package:project_3/Pages/More.dart';
import 'package:project_3/Pages/Shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    List tabs = [Home(), Cards(), Shop(), Market(), More()];
  }

  @override
  Widget build(BuildContext context) {
    List tabs = [Home(), Cards(), Shop(), Market(), More()];
    return Scaffold(
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'More',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: blueColor,
        onTap: onItemTapped,
      ),
      //!------------------------------
    );
  }
}
