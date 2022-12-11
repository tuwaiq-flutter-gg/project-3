// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:to_do_list/Comp/ButtonForm.dart';
import 'package:to_do_list/Comp/TextField.dart';
import 'package:to_do_list/View/HomePage.dart';
import 'package:to_do_list/View/WelcomePage.dart';
import 'package:to_do_list/View/splashPage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  bool check = false;
  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        textfield(
          Title: 'Name',
          con: con1,
        ),
        textfield(
          // co: psCO,
          Title: 'Password', con: con2,
        ),
        button(
          title: "Login",
          onPressed: () {
            Get.to(Home());
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // Checkbox(
              //   value: check,
              //   onChanged: (bool? value) {
              //     setState(() {
              //       check = value!;
              //     });
              //   },
              // ),
              //  Text("Remember me")
            ],
          ),
        )
      ],
    );
  }
}
