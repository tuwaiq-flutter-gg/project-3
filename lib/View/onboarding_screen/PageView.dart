import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/View/onboarding_screen/SmoothPage.dart';
import 'package:teatime/View/onboarding_screen/intro_Page2.dart';
import 'package:teatime/View/onboarding_screen/intro_page1.dart';
import 'package:teatime/constant.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController _controller = PageController();
  bool LastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              LastPage = (index == 1);
            });
          },
          controller: _controller,
          children: [
            IntroPage1(),
            IntroPage2(),
          ],
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: dPadding),
            alignment: Alignment(0, 0.85),
            child: SmoothPage(controller: _controller, LastPage: LastPage))
      ]),
    );
  }
}
