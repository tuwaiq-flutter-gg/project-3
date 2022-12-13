// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, file_names

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/Data/AppData.dart';
import 'package:project_3/components/Button.dart';
import 'package:project_3/components/TextField.dart';
import 'package:project_3/src/LogOut.dart';
import 'package:project_3/src/MyPost.dart';

class EditPost extends StatefulWidget {
  const EditPost({super.key, required this.userIndex, required this.postIndex});
  final int userIndex;
  final int postIndex;

  @override
  State<EditPost> createState() => _EditPostState();
}

class _EditPostState extends State<EditPost> {
  TextEditingController description = TextEditingController();

  @override
  void initState() {
    super.initState();
    description.text =
        users[widget.userIndex].posts[widget.postIndex].description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Post'),
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
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Center(
                child: Text(
                  users[widget.userIndex].posts[widget.postIndex].title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.file(
                    File(users[widget.userIndex]
                        .posts[widget.postIndex]
                        .image
                        .path),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: CustomTextField(
                  title: "Enter description",
                  controller: description,
                ),
              ),
              CustomButton(
                title: 'Save',
                press: () {
                  users[widget.userIndex].posts[widget.postIndex].description =
                      description.text;
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
