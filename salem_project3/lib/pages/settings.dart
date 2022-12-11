import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salem_project3/components/bbar.dart';
import 'package:salem_project3/components/profilebtns.dart';
import 'package:salem_project3/components/spacing.dart';
import 'package:salem_project3/pages/chngpwd.dart';
import 'package:salem_project3/pages/signin.dart';

import '../main.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 40,
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/profile.png"),
              radius: 70,
            ),
            Spacing(height: 15),
            Text(
              "Salem",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Spacing(height: 9),
            Profilebtns(btnName: "My Profile"),
            InkWell(
                onTap: () {
                  Get.to(CPwd());
                },
                child: Profilebtns(btnName: "Change Password")),
            Profilebtns(btnName: "My Surveys"),
            Profilebtns(btnName: "My Points"),
            Profilebtns(btnName: "Reviews"),
            Spacing(
              height: 55,
            ),
            InkWell(
              onTap: () {
                Get.offAll(Signin());
              },
              child: Bbar(
                bname: "Sign Out",
                textcolor: Colors.black,
                bcolor: lightgrey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
