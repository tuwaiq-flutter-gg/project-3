// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/Data/AppData.dart';
import 'package:project_3/components/About.dart';
import 'package:project_3/components/UserPageTop.dart';
import 'package:project_3/src/LogOut.dart';
import 'package:project_3/src/MyPost.dart';

class MyPage extends StatefulWidget {
  final int userIndex;
  const MyPage({super.key, required this.userIndex});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Page'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                LogOut(),
              );
            },
            icon: Icon(
              Icons.exit_to_app_outlined,
              size: 40,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            PageTop(
              userIndex: widget.userIndex,
              editable: true,
            ),
            About(
              userIndex: widget.userIndex,
            ),
            if (users[widget.userIndex].posts.isEmpty)
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30),
                child: const Text(
                  'No Posts',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
              )
            else
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: users[widget.userIndex].posts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Get.to(
                      MyPost(
                        userIndex: widget.userIndex,
                        postIndex: index,
                      ),
                    );
                  },
                  child: Image.file(
                    File(users[widget.userIndex].posts[index].image.path),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
