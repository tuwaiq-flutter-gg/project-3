
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Views/Home.dart';
import 'package:flutter_application_1/Views/StudentPage.dart';
import 'package:flutter_application_1/main.dart';

class homeBuuton extends StatefulWidget {
  const homeBuuton({super.key});

  @override
  State<homeBuuton> createState() => _homeBuutonState();
}

class _homeBuutonState extends State<homeBuuton> {
  int currentIndex = 0;
  final pages = [Home(),Student(), ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => setState(() => currentIndex = index),
          elevation: 0,
          iconSize: 25,
          currentIndex: currentIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: green,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon:  Icon(Icons.home_outlined), label: "الصفحة الرئيسية"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_sharp), label: "بياناتي"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: "الجدول"),
            // BottomNavigationBarItem(
            //   icon: ImageIcon(AssetImage("images/user.png")),
            //   label: "Profile",
            // ),
          ],
        ),
        body: SafeArea(child: pages[currentIndex]));
  }
}
