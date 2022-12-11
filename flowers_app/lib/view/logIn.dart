import 'package:flowers_app/components/custButton.dart';
import 'package:flowers_app/components/custTextField.dart';
import 'package:flowers_app/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class logIn extends StatelessWidget {
  const logIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 13, right: 13),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    custTextField(
                      text: 'UserName',
                    ),
                    custTextField(
                      text: 'Password',
                    ),
                    custButton(
                      text: 'Sign in',
                      press: () {
                        Get.to(home());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
