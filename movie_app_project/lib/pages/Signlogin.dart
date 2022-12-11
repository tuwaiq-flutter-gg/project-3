import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_project/pages/SignUp.dart';
import 'package:movie_app_project/pages/homepage.dart';
import 'package:movie_app_project/pages/logIn.dart';
import 'package:movie_app_project/style.dart';
import '../widgets/widgets.dart';

class signlogPage extends StatefulWidget {
  const signlogPage({super.key});

  @override
  State<signlogPage> createState() => _signlogPageState();
}

class _signlogPageState extends State<signlogPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 150,
                  child: Center(
                      child: Text(
                    "Movie Land",
                    style: heading,
                  )),
                ),
                Column(
                  children: [
                    Text(
                      "The Best destination for the most ",
                      style: description,
                    ),
                    Text(
                      "enjoyable movies and series...",
                      style: description,
                    )
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 100, 2, 148)),
                    child: Center(
                        child: TextButton(
                            onPressed: () {
                              Get.to(SignUp());
                            },
                            child: Text(
                              "Sign Up",
                              style: buttonText,
                            ))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 100, 2, 148)),
                    child: Center(
                        child: TextButton(
                            onPressed: () {
                             Get.to(LogIn());
                            },
                            child: Text(
                              "Log In",
                              style: buttonText,
                            ))),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Get.to(homepage());
                    },
                    child: Text(
                      "Try as a guest?",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
