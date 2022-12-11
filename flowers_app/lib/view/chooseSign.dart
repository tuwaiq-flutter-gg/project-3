import 'package:flowers_app/components/custButton.dart';
import 'package:flowers_app/components/loginChoices.dart';
import 'package:flowers_app/view/logIn.dart';
import 'package:flowers_app/view/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class chooseSign extends StatelessWidget {
  const chooseSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 221, 210, 214),
      body: Stack(
        children: [
          Image(
            image: AssetImage("images/bg.png"),
            height: Get.height,
            width: Get.width,
            fit: BoxFit.fill,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "images/logo1.png",
                height: Get.height / 4,
                width: Get.width / 4,
              ),
              logIn(),
              Text("____________________ Or ____________________"),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        loginChoices(
                            image: "images/Facebook.png",
                            text: "Log In with Facebook"),
                        loginChoices(
                            image: "images/Apple.png",
                            text: "Log In with Apple"),
                        loginChoices(
                            image: "images/Google.png",
                            text: "Log In with Google")
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("you don't have account?"),
                  TextButton(
                      onPressed: () {
                        Get.to(signUp());
                      },
                      child: Text("Sign Up"))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
