import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rescue_app/components/categoryButton.dart';
import 'package:rescue_app/components/customTextField.dart';
import 'package:rescue_app/components/customTextFieldProfile.dart';
import 'package:rescue_app/components/primaryButton.dart';
import 'package:rescue_app/components/textButton.dart';
import 'package:rescue_app/style.dart';
import 'package:image_picker/image_picker.dart';

enum Type { Lost, Found }

enum Category { Cat, Dog, Bird, Other }

class newPost extends StatefulWidget {
  const newPost({super.key});

  @override
  State<newPost> createState() => _newPostState();
}

class _newPostState extends State<newPost> {
  final ImagePicker _picker = ImagePicker();
  XFile? image;
  Type _type = Type.Lost;
  Category _category = Category.Cat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined, color: colors.Text),
            onPressed: () => Get.back(),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Add a post",
            style: GoogleFonts.openSans(
              fontSize: 24,
              color: colors.Text,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Found or Lost a pet",
                        style: GoogleFonts.openSans(
                          fontSize: 18,
                          color: colors.Text,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    title: const Text('Lost'),
                    leading: Radio(
                      fillColor: MaterialStateProperty.all(colors.primary),
                      value: Type.Lost,
                      groupValue: _type,
                      onChanged: (value) {
                        setState(() {
                          _type = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Found'),
                    leading: Radio(
                      fillColor: MaterialStateProperty.all(colors.primary),
                      value: Type.Found,
                      groupValue: _type,
                      onChanged: (value) {
                        setState(() {
                          _type = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Category",
                        style: GoogleFonts.openSans(
                          fontSize: 18,
                          color: colors.Text,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    title: const Text('Cat'),
                    leading: Radio(
                      fillColor: MaterialStateProperty.all(colors.primary),
                      value: Category.Cat,
                      groupValue: _category,
                      onChanged: (value) {
                        setState(() {
                          _category = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Dog'),
                    leading: Radio(
                      fillColor: MaterialStateProperty.all(colors.primary),
                      value: Category.Dog,
                      groupValue: _category,
                      onChanged: (value) {
                        setState(() {
                          _category = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Bird'),
                    leading: Radio(
                      fillColor: MaterialStateProperty.all(colors.primary),
                      value: Category.Bird,
                      groupValue: _category,
                      onChanged: (value) {
                        setState(() {
                          _category = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Other'),
                    leading: Radio(
                      fillColor: MaterialStateProperty.all(colors.primary),
                      value: Category.Other,
                      groupValue: _category,
                      onChanged: (value) {
                        setState(() {
                          _category = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Provide more information",
                        style: GoogleFonts.openSans(
                          fontSize: 18,
                          color: colors.Text,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      customTextFieldProfile(
                        isPass: false,
                        hint: "Enter your pet details",
                        name: '',
                        enabled: true,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    textButton(
                      name: 'Upload a picture',
                      underline: false,
                      onPressed: () async {
                        image = (await _picker.pickImage(
                            source: ImageSource.gallery))!;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              primaryButton(
                title: "Submit",
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Your Post is Added Successfully 🎉'),
                      backgroundColor: colors.primary));
                },
              )
            ],
          ),
        ));
  }
}
