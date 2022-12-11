// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/Comp/Category.dart';
import 'package:to_do_list/Comp/Search.dart';
import 'package:to_do_list/View/TaskList.dart';
import 'package:to_do_list/View/WelcomePage.dart';
import 'package:to_do_list/View/splashPage.dart';
import 'package:to_do_list/main.dart';
import 'package:weather/weather.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: TextStyle(color: Color(0xff9088D4)),
        ),
        elevation: 0,
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
        leading: IconButton(
            color: Color(0xff9088D4),
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          search(),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    category(
                      ColorCate: ColYel,
                      tit: "Home",
                      goto: TaskList(title: "Home"),
                    ),
                    category(
                      ColorCate: ColBlu,
                      tit: "Education",
                      goto: TaskList(title: "Education"),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    category(
                      ColorCate: ColYel,
                      tit: "Shooping",
                      goto: TaskList(title: "Shooping"),
                    ),
                  ],
                ),
              )
            ],
          ),

          // Container(
          //   child: Row(
          //     children: [
          //       Container(
          //           width: Get.width / 3,
          //           height: Get.height / 5,
          //           child: Image.asset(
          //             "images/todo.png",
          //             fit: BoxFit.fill,
          //           )),
          //       Text("DO something")
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
