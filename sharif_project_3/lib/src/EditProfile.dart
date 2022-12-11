// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_3/Data/AppData.dart';
import 'package:project_3/components/Button.dart';
import 'package:project_3/components/TextField.dart';
import 'package:project_3/src/Home.dart';
import 'package:project_3/src/LogOut.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key, required this.userIndex});
  final int userIndex;

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController name = TextEditingController();
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController message = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  XFile? image;

  @override
  void initState() {
    super.initState();
    name.text = users[widget.userIndex].userName;
    title.text = users[widget.userIndex].title;
    description.text = users[widget.userIndex].description;
    message.text = users[widget.userIndex].message;
    image = users[widget.userIndex].profilePicture;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
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
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 20),
                    alignment: Alignment.center,
                    child: Text(
                      "Edit Profile",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Get.isDarkMode ? Colors.white : Colors.black54,
                    ),
                    padding: EdgeInsets.all(10),
                    child: image == null
                        ? CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage("images/avatar-icon.png"),
                          )
                        : CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: FileImage(
                              File(image!.path),
                            ),
                          ),
                  ),
                  CustomButton(
                    title: 'Change Profile Picture',
                    press: () async {
                      image =
                          await _picker.pickImage(source: ImageSource.gallery);
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    title: "Enter Username",
                    controller: name,
                  ),
                  CustomTextField(
                    title: "Enter Title",
                    controller: title,
                  ),
                  CustomTextField(
                    title: "Enter description",
                    controller: description,
                  ),
                  CustomTextField(
                    title: "Enter message",
                    controller: message,
                  ),
                  CustomButton(
                    title: 'Save',
                    press: () {
                      users[widget.userIndex].userName = name.text;
                      users[widget.userIndex].title = title.text;
                      users[widget.userIndex].description = description.text;
                      users[widget.userIndex].message = message.text;
                      users[widget.userIndex].profilePicture = image;
                      Get.offAll(
                        Home(
                          userIndex: widget.userIndex,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
