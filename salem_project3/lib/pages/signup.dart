import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salem_project3/components/bbar.dart';
import 'package:salem_project3/components/spacing.dart';
import 'package:salem_project3/components/txtf.dart';
import 'package:salem_project3/pages/homepage.dart';

import '../main.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacing(height: Get.height / 4.8),
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Spacing(height: 20),
                Txtf(
                  pwd: false,
                  hint: "Enter Username",
                ),
                Spacing(height: 10),
                Txtf(
                  pwd: true,
                  hint: "Enter Password",
                ),
                Spacing(height: 10),
                Txtf(
                  pwd: true,
                  hint: "Re-Enter Password",
                ),
                Spacing(height: 40),
                InkWell(
                  onTap: () {
                    Get.offAll(HomePage());
                  },
                  child: Bbar(
                    bcolor: maincolor,
                    bname: "Sign up",
                    textcolor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
