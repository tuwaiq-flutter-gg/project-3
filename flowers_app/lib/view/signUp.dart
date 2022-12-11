import 'package:flowers_app/components/custButton.dart';
import 'package:flowers_app/components/custTextField.dart';
import 'package:flowers_app/view/chooseSign.dart';
import 'package:flowers_app/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("images/bg.png"),
            height: Get.height,
            width: Get.width,
            fit: BoxFit.fill,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/logo1.png",
                height: Get.height / 3,
                width: Get.width / 3,
              ),
              Container(
                padding: EdgeInsets.only(left: 13, right: 13),
                child: Center(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      custTextField(
                        text: 'Enter UserName',
                      ),
                      custTextField(
                        text: 'Enter Password',
                      ),
                      custTextField(text: "Re-enter Password"),
                      custButton(
                        text: 'Sign Up',
                        press: () {
                          Get.to(home());
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("you already have account?"),
                          TextButton(
                              onPressed: () {
                                Get.to(chooseSign());
                              },
                              child: Text("Log in"))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
