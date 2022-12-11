import 'dart:io';
import 'package:blog/Components/ButtonCom.dart';
import 'package:blog/Models/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

import '../Components/TextField.dart';

class AddBooks extends StatefulWidget {
  const AddBooks({super.key});

  @override
  State<AddBooks> createState() => _AddBooksState();
}

class _AddBooksState extends State<AddBooks> {
  final ImagePicker _picker = ImagePicker();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBeige,
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: 35,
          ),
          //----------------------------------book title------------------------------
          Center(
            child: Container(
              height: 30,
              width: 280,
              child: Text("Book Title",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF342927))),
            ),
          ),
          Center(
            child: Container(
              width: 300,
              height: 50,
              child: TextFieldCom(
                FieldColor: beige,
                Icon: Icon(Icons.title_outlined),
              ),
            ),
          ),
          //----------------------------------author's name------------------------------
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 30,
              width: 280,
              child: Text("Author's Name",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF342927))),
            ),
          ),
          Center(
            child: Container(
              width: 300,
              height: 50,
              child: TextFieldCom(
                FieldColor: beige,
                Icon: Icon(Icons.person_pin_rounded),
              ),
            ),
          ),
          //----------------------------------book cover------------------------------
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 30,
                width: 100,
                child: Text("Book cover",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF342927))),
              ),
              ButtonCom(
                ButtonName: "Open Gallery",
                Color: currant,
                NameColor: lightBeige,
                OnPressed: () async {
                  image = await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {});
                },
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),

          Center(
            child: Container(
              height: 200,
              width: 200,
              color: beige,
              child: FittedBox(
                fit: BoxFit.fill,
                child: image == null
                    ? Center(
                        child: Text(
                        "",
                        style: TextStyle(fontSize: 10),
                      ))
                    : Image.file(File(image!.path)),
              ),
            ),
          ),
          //----------------------------------Short Description------------------------------
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              height: 30,
              width: 280,
              child: Text("Short Description",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF342927))),
            ),
          ),
          Center(
            child: Container(
              width: 300,
              height: 100,
              child: TextFieldCom(
                liens: 3,
                FieldColor: beige,
              ),
            ),
          ),
          //-------------------------Add text----------------------------------
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              height: 30,
              width: 280,
              child: Text("Add Text",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF342927))),
            ),
          ),
          Center(
            child: Container(
              width: 300,
              height: 700,
              child: TextFieldCom(
                liens: 200,
                FieldColor: beige,
              ),
            ),
          ),
          //----------------------------button-------------------
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 100,
                child: ButtonCom(
                  ButtonName: "Save",
                  Color: Color(0xFF8D3545),
                  NameColor: lightBeige,
                  OnPressed: () {},
                ),
              ),
              Container(
                height: 40,
                width: 170,
                child: ButtonCom(
                  ButtonName: "Continue Later",
                  Color: Color(0xFF8D3545),
                  NameColor: lightBeige,
                  OnPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ],
      )),
    );
  }
}
