import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/View/HomePage/HomePage.dart';
import 'package:teatime/View/Profile/ChangePassword.dart';
import 'package:teatime/View/SignInAndSignUp/SignIn/SignIn.dart';
import 'package:teatime/View/SignInAndSignUp/SignUp/SignUp.dart';
import 'package:teatime/View/onboarding_screen/PageView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/OnBoarding",
      getPages: [
        GetPage(name: "/OnBoarding", page: () => OnBoarding(),),
        GetPage(name: "/HomePage", page: () => HomePage(),),
        GetPage(name: "/SignUp", page: () => SignUp(),),
        GetPage(name: "/SignIn", page: () => SignIn(),),
        GetPage(name: "/ChangePassword", page: () => ChangePassword(),),
      ],
    );
  }
}
