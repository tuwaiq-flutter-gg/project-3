import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:project3/view/callsPage.dart';
import 'package:project3/view/chatPage.dart';
import 'package:project3/view/settingPage.dart';
import 'package:project3/view/story.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff075e55),
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "WhatsApp",
              style: TextStyle(fontSize: 21),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 12, right: 15),
              child: Icon(
                Icons.search,
                size: 25,
              ),
            ),
            PopupMenuButton(
              onSelected: (value) {
                if (value == 5) {
                  Get.to(() => SettingPage());
                }
              },
              padding: EdgeInsets.symmetric(vertical: 20),
              iconSize: 28,
              elevation: 10,
              itemBuilder: (context) => [
                PopupMenuItem(value: 1, child: Text("New Group")),
                PopupMenuItem(value: 2, child: Text("New broadcast")),
                PopupMenuItem(value: 3, child: Text("Linked Devices")),
                PopupMenuItem(value: 4, child: Text("Starred messages")),
                PopupMenuItem(value: 5, child: Text("Setting")),
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              width: Get.width,
              color: Color(0xff075e55),
              child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    Container(
                      width: 25,
                      child: Tab(icon: Icon(Icons.camera_alt)),
                    ),
                    Container(
                      width: 80,
                      child: Tab(
                        child: Row(
                          children: [
                            Text("CHATS"),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              width: 22,
                              height: 22,
                              alignment: Alignment.center,
                              child: Text(
                                "7",
                                style: TextStyle(
                                    color: Color(0xff075e55), fontSize: 14),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      child: Tab(child: Text("STATUS")),
                    ),
                    Container(
                      width: 70,
                      child: Tab(child: Text("CALLES")),
                    )
                  ]),
            ),
            Flexible(
                flex: 1,
                child: TabBarView(children: [
                  Container(
                    color: Colors.black,
                  ),
                  ChatPage(),
                  StoryPage(),
                  CallPage(),
                ]))
          ],
        ),
      ),
    );
  }
}
