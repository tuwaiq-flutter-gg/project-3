import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myevent/components.dart/cards.dart';
import 'package:myevent/components.dart/gatogry.dart';
import 'package:myevent/components.dart/mao.dart';

import 'package:myevent/pages/Home.dart';
import 'package:myevent/pages/eventpage.dart';
import 'package:myevent/pages/forget.dart';
import 'package:myevent/pages/profile.dart';
import 'package:myevent/pages/weeklycal.dart';


class nav extends StatefulWidget {
  const nav({super.key});

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  int sindex = 0;
  final Screens = [
   Home(),weekly()
    ,profile(),
  MyMap(),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[sindex],
      bottomNavigationBar: BottomNavigationBar(
       
          onTap: (index) {
            setState(() {
              sindex = index;
            });
          },
          currentIndex: sindex,
          selectedItemColor: Color.fromARGB(255, 178, 22, 209),
          backgroundColor: Color.fromARGB(255, 167, 13, 219),
          unselectedItemColor: Colors.blueGrey,
          iconSize: 15,
          items: [
            BottomNavigationBarItem(
                label: "Home", icon: SizedBox(height: 20,width: 20,
                  child: Image.asset("images/home.png"))),
            BottomNavigationBarItem(
                label: "this week",
                icon: Image.asset("images/Group (1).png")),
            BottomNavigationBarItem(
                label: "schadole", icon: Image.asset("images/user 1 (2).png")),
            BottomNavigationBarItem(
                label: "MAP", icon: Image.asset("images/Group.png"))
          ]),
    );
  }
}
