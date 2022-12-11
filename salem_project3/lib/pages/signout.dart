import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:salem_project3/components/bbar.dart';
import 'package:salem_project3/components/spacing.dart';
import 'package:salem_project3/components/txtf.dart';
import 'package:salem_project3/main.dart';
import 'package:salem_project3/pages/signin.dart';

class SignOut extends StatelessWidget {
  const SignOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign out",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacing(height: 100),
            Text("Enter your Password to sign out"),
            Spacing(height: 15),
            Txtf(hint: "Password", pwd: true),
            Spacing(height: Get.height / 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  Get.offAll(Signin());
                },
                child: Bbar(
                    bname: "Sign out",
                    textcolor: Colors.white,
                    bcolor: maincolor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
