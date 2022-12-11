import 'package:flutter/material.dart';
import 'package:perject_3/colorStyle.dart';
import 'package:perject_3/views/eventPage.dart';
import 'package:perject_3/views/groupsPage.dart';
import 'package:perject_3/views/homePage.dart';
import 'package:perject_3/views/leaderBoardPage.dart';
import 'package:perject_3/views/profilePage.dart';

class NavigaitonPage extends StatefulWidget {
  const NavigaitonPage({super.key});
  @override
  State<NavigaitonPage> createState() => _NavigaitonPageState();
}

class _NavigaitonPageState extends State<NavigaitonPage> {
  int _pageIndex = 0;

  final List screen = const [
    HomePage(),
    LeaderboardPage(),
    EventPage(),
    GroupsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        currentIndex: _pageIndex,
        unselectedFontSize: 14,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: ColorStyles.onPrimary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: "Leaderboard",
            backgroundColor: ColorStyles.onPrimary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: "Event",
            backgroundColor: ColorStyles.onPrimary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: "Groups",
            backgroundColor: ColorStyles.onPrimary,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile",
            backgroundColor: ColorStyles.onPrimary,
          ),
        ],
      ),
    );
  }
}
