// ignore_for_file: library_private_types_in_public_api, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, library_prefixes

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_3/Data/AppData.dart';
import 'package:project_3/Data/Post.dart';
import 'package:project_3/components/Button.dart';
import 'package:project_3/components/TextField.dart';
import 'package:project_3/src/Home.dart';
import 'package:project_3/src/LogOut.dart';

class AddPost extends StatefulWidget {
  final int userIndex;
  const AddPost({Key? key, required this.userIndex}) : super(key: key);

  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  XFile? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Post'),
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
              padding: const EdgeInsets.all(30),
              child: Center(
                child: const Text(
                  'Add New Post',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            CustomButton(
                press: () async {
                  image = await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {});
                },
                title: "Choose your image"),
            Padding(
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: image == null
                    ? Image.asset(
                        "images/PlaceHolder.png",
                      )
                    : Image.file(File(image!.path)),
              ),
            ),
            CustomTextField(
              title: "Title",
              controller: title,
            ),
            CustomTextField(
              title: "Description",
              controller: description,
            ),
            CustomButton(
              press: () {
                if (image != null && title.text.isNotEmpty) {
                  Post newPost = Post(
                    image: image!,
                    title: title.text,
                    description: description.text,
                  );
                  users[widget.userIndex].posts.add(newPost);
                  Get.offAll(
                    Home(
                      userIndex: widget.userIndex,
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      insetPadding: EdgeInsets.zero,
                      content: Text(
                        image == null
                            ? "Upload Image To Post"
                            : "Type a Title To Post",
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                }
              },
              title: "Post It !",
            ),
          ],
        ),
      ),
    );
  }
}
