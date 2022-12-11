// ignore_for_file: library_private_types_in_public_api, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, library_prefixes

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/Data/AppData.dart';
import 'package:project_3/Data/Comments.dart';
import 'package:project_3/components/Button.dart';
import 'package:project_3/components/CommentCard.dart';
import 'package:project_3/src/LogOut.dart';

class OtherPost extends StatefulWidget {
  final int userIndex;
  final int otherIndex;
  final int postIndex;
  const OtherPost(
      {Key? key,
      required this.otherIndex,
      required this.postIndex,
      required this.userIndex})
      : super(key: key);

  @override
  _MyPostState createState() => _MyPostState();
}

class _MyPostState extends State<OtherPost> {
  TextEditingController comment = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(32.0),
                ),
              ),
              content: SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Write a Comment",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: TextField(
                        controller: comment,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 30, right: 30, top: 5, bottom: 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                        ),
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                      ),
                    ),
                    CustomButton(
                      title: "Comment",
                      press: () {
                        Comment newComment = Comment(
                          date: DateTime.now(),
                          userName: users[widget.userIndex].userName,
                          text: comment.text,
                        );
                        users[widget.otherIndex]
                            .posts[widget.postIndex]
                            .comments
                            .add(newComment);
                        Get.back();
                        comment.text = "";
                        setState(() {});
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
        child: Icon(Icons.comment),
      ),
      appBar: AppBar(
        title: const Text('Other Post'),
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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    users[widget.otherIndex].posts[widget.postIndex].title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.file(
                  File(users[widget.otherIndex]
                      .posts[widget.postIndex]
                      .image
                      .path),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Text(
                  users[widget.otherIndex].posts[widget.postIndex].description,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            if (users[widget.otherIndex]
                .posts[widget.postIndex]
                .comments
                .isEmpty)
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30),
                child: const Text(
                  'No Comments',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
              )
            else
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: users[widget.otherIndex]
                    .posts[widget.postIndex]
                    .comments
                    .length,
                itemBuilder: (context, index) => CommentCard(
                  comment: users[widget.otherIndex]
                      .posts[widget.postIndex]
                      .comments[index],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
