// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/Data/AppData.dart';
import 'package:project_3/components/Button.dart';
import 'package:project_3/components/TextField.dart';
import 'package:project_3/src/Home.dart';
import 'package:project_3/src/Sign_up.dart';

class SignIn extends StatelessWidget {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20, left: 7, top: 100),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sign in",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  CustomTextField(
                    title: "Username",
                    controller: userName,
                  ),
                  CustomTextField(
                    title: "Password",
                    controller: password,
                  ),
                  CustomButton(
                    title: 'Sign In',
                    press: () {
                      int userIndex = users.indexWhere((element) =>
                          element.userName == userName.text &&
                          element.password == password.text);
                      if (userIndex == -1) {
                        showDialog(
                          context: context,
                          builder: (context) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: AlertDialog(
                              insetPadding: EdgeInsets.zero,
                              content: Text(
                                "UserName or Password is Wrong",
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
                        Get.to(
                          Home(
                            userIndex: userIndex,
                          ),
                        );
                      }
                      //Get.to(Home());
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 7),
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Get.to(SignUp());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text('New Here?'),
                          Text(
                            " Sign up",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
