// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/Data/AppData.dart';
import 'package:project_3/components/About.dart';
import 'package:project_3/components/UserPageTop.dart';
import 'package:project_3/src/LogOut.dart';
import 'package:project_3/src/OtherPost.dart';

class OtherPage extends StatefulWidget {
  final int userIndex;
  final int otherIndex;
  const OtherPage(
      {super.key, required this.userIndex, required this.otherIndex});

  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Page'),
        centerTitle: true,
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
              userIndex: widget.otherIndex,
              editable: false,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: users[widget.userIndex]
                          .followingIndexes
                          .contains(widget.otherIndex)
                      ? Colors.red
                      : Get.isDarkMode
                          ? Colors.black
                          : Colors.blue,
                ),
                onPressed: () {
                  if (users[widget.userIndex]
                      .followingIndexes
                      .contains(widget.otherIndex)) {
                    users[widget.userIndex]
                        .followingIndexes
                        .remove(widget.otherIndex);
                    users[widget.otherIndex].followers--;
                  } else {
                    users[widget.userIndex]
                        .followingIndexes
                        .add(widget.otherIndex);
                    users[widget.otherIndex].followers++;
                  }
                  setState(() {});
                },
                child: users[widget.userIndex]
                        .followingIndexes
                        .contains(widget.otherIndex)
                    ? const Text(
                        'UnFollow',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      )
                    : const Text(
                        'Follow',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
              ),
            ),
            About(
              userIndex: widget.otherIndex,
            ),
            if (users[widget.otherIndex].posts.isEmpty)
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
                itemCount: users[widget.otherIndex].posts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Get.to(
                      OtherPost(
                        userIndex: widget.otherIndex,
                        postIndex: index,
                      ),
                    );
                  },
                  child: Image.file(
                    File(users[widget.otherIndex].posts[index].image.path),
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
