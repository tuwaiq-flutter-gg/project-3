import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salem_project3/components/bbar.dart';
import 'package:salem_project3/components/spacing.dart';
import 'package:salem_project3/components/txtf.dart';
import 'package:salem_project3/pages/homepage.dart';
import 'package:salem_project3/pages/signup.dart';

import '../main.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacing(height: Get.height / 3.5),
                Text(
                  "Sign in",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Spacing(height: 20),
                Txtf(
                  pwd: false,
                  hint: "Username",
                ),
                Spacing(height: 10),
                Txtf(
                  pwd: true,
                  hint: "Password",
                ),
                Spacing(height: 40),
                InkWell(
                  onTap: () {
                    Get.offAll(HomePage());
                  },
                  child: Bbar(
                    bcolor: maincolor,
                    bname: "Sign in",
                    textcolor: Colors.white,
                  ),
                ),
                Spacing(height: 20),
                InkWell(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(239, 9, 0, 0),
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.right,
                  ),
                )),
                InkWell(
                    onTap: () {
                      Get.to(Signup());
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(286, 9, 0, 0),
                      child: Text(
                        "Or Sign up",
                        textAlign: TextAlign.right,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
