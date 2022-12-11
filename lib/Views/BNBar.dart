import 'package:blog/Models/Color.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'AddBooks.dart';
import 'Profile.dart';
import 'Saved.dart';

class BNBar extends StatefulWidget {
  const BNBar({super.key});

  @override
  State<BNBar> createState() => _BNBarState();
}

class _BNBarState extends State<BNBar> {
  int click = 0;
  List Pages = [Home(), Saved(), AddBooks(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[click],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: lightBeige,
          elevation: 0,
          currentIndex: click,
          selectedItemColor: currant,
          unselectedItemColor: Gray,
          showUnselectedLabels: true,
          onTap: ((value) {
            setState(() {
              click = value;
            });
          }),
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.store,
              ),
            ),
            BottomNavigationBarItem(
              label: "Saved",
              icon: Icon(
                Icons.bookmark_added_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: "Add Books",
              icon: Icon(
                Icons.menu_book,
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
            ),
          ]),
    );
  }
}
