// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key, required this.goTo, required this.duration});
  final int duration;
  final Widget goTo;
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration), () {
      Get.offAll(() => goTo);
    });

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 135, 63, 169),
      body: Center(child: Image.asset("images/todo.png")),
    );
  }
}
