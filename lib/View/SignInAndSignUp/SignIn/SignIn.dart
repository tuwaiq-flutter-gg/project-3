import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/View/Custom/CustomButton.dart';
import 'package:teatime/View/Custom/CustomSlideButton.dart';
import 'package:teatime/View/Custom/CustomTextFaild.dart';
import 'package:teatime/View/SignInAndSignUp/SignIn/FirstPicInSignInAndUp.dart';
import 'package:teatime/View/SignInAndSignUp/SignIn/SecondPicInSignInAndUp.dart';
import 'package:teatime/View/SignInAndSignUp/SignUp/DividerSingUpAndIn.dart';
import 'package:teatime/constant.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
                        Text("WlcomeBack We Miss You..",
                            style: TextStyle(
                                color: primaryTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        Expanded(
                          child: SizedBox(
                              width: 150,
                              child: Image.asset("images/splash/splash.png")),
                        )
                      ],
                    ),
                    CustomTextFaild(
                      hintText: "Email",
                    ),
                    CustomTextFaild(
                      hintText: "Password",
                    ),
                    CustomButton(
                        buttonGroundColor: greenColor, buttonText: "Let's Go",onPressed: () {
                          Get.toNamed("/HomePage");
                        },),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Forgit a Password?",
                          style:
                              TextStyle(color: primaryTextColor, fontSize: 13),
                        )),
                    DividerSingUpAndIn(),
                    CustomSlideButton(
                        text: "SingIn By Google",
                        slideIcon: "images/SlideButton/google.png"),
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
