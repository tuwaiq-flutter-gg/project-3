// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/Data/AppData.dart';
import 'package:project_3/Data/User.dart';
import 'package:project_3/components/Button.dart';
import 'package:project_3/components/TextField.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rePassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20, left: 7, top: 50),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sign Up",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  CustomTextField(
                    title: "Enter Username",
                    controller: userName,
                  ),
                  CustomTextField(
                    title: "Enter Password",
                    controller: password,
                  ),
                  CustomTextField(
                    title: "Re-enter Password",
                    controller: rePassword,
                  ),
                  CustomButton(
                    title: 'Sign Up',
                    press: () {
                      if (password.text != rePassword.text) {
                        showDialog(
                          context: context,
                          builder: (context) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: AlertDialog(
                              insetPadding: EdgeInsets.zero,
                              content: Text(
                                "Password does not match!!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        );
                      } else {
                        if (users.firstWhereOrNull((element) =>
                                element.userName == userName.text) !=
                            null) {
                          print("object");
                          showDialog(
                            context: context,
                            builder: (context) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: AlertDialog(
                                insetPadding: EdgeInsets.zero,
                                content: Text(
                                  "UserName already exists please choose another one!",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          User newUser = User(
                            userName: userName.text,
                            password: password.text,
                          );
                          users.add(newUser);
                          Get.back();
                        }
                      }
                    },
                  ),
                  //   Container(
                  //     margin: EdgeInsets.only(top: 20, left: 7),
                  //     alignment: Alignment.centerRight,
                  //     child: InkWell(
                  //       onTap: () {
                  //         // Get.to(SignUp());
                  //         Get.changeTheme(
                  //           Get.isDarkMode ? MyLight : MyDark,
                  //         );
                  //         Get.to(SignUp());
                  //       },
                  //       child: Text(
                  //         "Forgot Password?",
                  //         textAlign: TextAlign.justify,
                  //         style: TextStyle(
                  //           fontSize: 14,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
