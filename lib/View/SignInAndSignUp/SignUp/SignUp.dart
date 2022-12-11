import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/View/Custom/CustomButton.dart';
import 'package:teatime/View/Custom/CustomSlideButton.dart';
import 'package:teatime/View/Custom/CustomTextFaild.dart';
import 'package:teatime/View/SignInAndSignUp/SignIn/FirstPicInSignInAndUp.dart';
import 'package:teatime/View/SignInAndSignUp/SignIn/SecondPicInSignInAndUp.dart';
import 'package:teatime/View/SignInAndSignUp/SignUp/DividerSingUpAndIn.dart';
import 'package:teatime/View/SignInAndSignUp/SignUp/TermsAndConditions.dart';
import 'package:teatime/constant.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(
          height: Get.height * 0.90,
          child: Stack(
            children: [
              FirstPicInSignInAndUp(),
              SecondPicInSignInAndUp(),
              Container(
                padding: EdgeInsetsDirectional.all(dPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text("Lets Drink a Cup of Tea..",
                            style: TextStyle(
                                color: primaryTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        Expanded(
                          child: SizedBox(
                              width: 150,
                              child: Image.asset("images/SingInAndUp/cup.jpg")),
                        )
                      ],
                    ),
                    CustomTextFaild(
                      hintText: "UserName",
                    ),
                    CustomTextFaild(
                      hintText: "Email",
                    ),
                    CustomTextFaild(
                      hintText: "Password",
                    ),
                    CustomButton(
                      buttonGroundColor: greenColor,
                      buttonText: "Let's Go",
                      onPressed: () {
                        Get.toNamed("/HomePage");
                      },
                    ),
                    TermsAndConditions(),
                    DividerSingUpAndIn(),
                    CustomSlideButton(
                      text: "SingIn By Google",
                      slideIcon: "images/SlideButton/google.png",
                      onSubmit: () {
                        Get.toNamed("/SignIn");
                      },
                    ),
                    CustomSlideButton(
                        text: "SingIn By FaceBook",
                        slideIcon: "images/SlideButton/facebook.png"),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
