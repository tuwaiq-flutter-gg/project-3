// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/View/Login.dart';
import 'package:to_do_list/View/SignUp.dart';
import 'package:to_do_list/View/splashPage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              title: Text(
                "Welcome ",
                style: TextStyle(color: Color(0xff9088D4)),
              ),
              centerTitle: true,
              backgroundColor: Color(0xffE7E6F5),
              actions: [
                IconButton(
                    color: Color(0xff9088D4),
                    onPressed: () {
                      Get.offAll(SplashPage(goTo: WelcomePage(), duration: 5));
                    },
                    icon: Icon(Icons.logout))
              ],
            ),
            body: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff9088D4),
                  ),
                  child: TabBar(
                    labelColor: Color(0xff9088D4),
                    indicator: UnderlineTabIndicator(),
                    tabs: [
                      Tab(
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "SignUp",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      LoginPage(),
                      SignUpPage(),
                    ],
                  ),
                ),
              ],
            )));
  }
}
