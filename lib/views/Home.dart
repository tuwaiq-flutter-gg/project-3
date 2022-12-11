import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rescue_app/style.dart';
import 'package:rescue_app/views/Messages.dart';
import 'package:rescue_app/views/Profile.dart';
import 'package:rescue_app/views/SignIn.dart';
import 'package:rescue_app/views/SignUp.dart';
import 'package:rescue_app/views/posts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      Posts(),
      Messages(),
      Profile(),
    ];
    void _onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: Center(
        child: screens[selectedIndex],
      ),
      //screens[index],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: colors.fields,
          iconSize: 30,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedItemColor: colors.primary,
          unselectedItemColor: colors.icons,
          selectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: colors.primary),
          unselectedLabelStyle: TextStyle(
              fontSize: 12, fontWeight: FontWeight.normal, color: colors.icons),
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: _onItemTapped,
          items: [
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.store, color: Color.fromARGB(130, 0, 0, 0)),
            //   label: "Home",
            //   activeIcon: Icon(Icons.store, color: Color(0xffD35400)),
            // ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_fill),
              label: "Posts",
              activeIcon: Icon(CupertinoIcons.house_fill),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2_fill),
              label: "Chat",
              activeIcon: Icon(CupertinoIcons.chat_bubble_2_fill),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_alt_circle_fill),
              label: "Profile",
              activeIcon: Icon(CupertinoIcons.person_alt_circle_fill),
            ),
          ],
        ),
      ),
    );
  }
}
