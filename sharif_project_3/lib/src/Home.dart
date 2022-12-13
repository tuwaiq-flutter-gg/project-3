// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:project_3/src/Discover.dart';
import 'package:project_3/src/Following.dart';
import 'package:project_3/src/Followers.dart';
import 'package:project_3/src/MyPage.dart';
import 'package:project_3/src/Setting.dart';

class Home extends StatefulWidget {
  final int userIndex;

  const Home({super.key, required this.userIndex});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      MyPage(userIndex: widget.userIndex),
      Discover(userIndex: widget.userIndex),
      Following(userIndex: widget.userIndex),
      Followers(userIndex: widget.userIndex),
      Setting(userIndex: widget.userIndex)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => setState(() => currentIndex = index),
          iconSize: 25,
          currentIndex: currentIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: "MyPage",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Discover",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.follow_the_signs),
              label: "Following",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              label: "Followers",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Theme",
            ),
          ],
        ),
        body: SafeArea(child: pages[currentIndex]));
  }
}
