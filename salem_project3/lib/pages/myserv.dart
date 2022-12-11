import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:salem_project3/components/containers.dart';
import 'package:salem_project3/components/data.dart';
import 'package:salem_project3/components/servlist.dart';
import 'package:salem_project3/pages/survey.dart';

import '../main.dart';

class Myserv extends StatelessWidget {
  Myserv({super.key});
  MyDataController qq = MyDataController();
  TextEditingController? srch1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Surveys",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        // toolbarHeight: 40,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: TextField(
              textAlign: TextAlign.left,
              controller: srch1,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),
                  fillColor: lightgrey),
            ),
          ),
          for (int x = 0; x < servList.length; x++)
            Containers(
              child: ClipRRect(
                child: qq.img(),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: Get.width,
              height: 120,
              func: () {
                Get.to(Survey());
              },
            ),
        ],
      ),
    );
  }
}
