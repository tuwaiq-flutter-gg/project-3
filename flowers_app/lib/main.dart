import 'package:flowers_app/view/firstSplash.dart';
import 'package:flowers_app/view/chooseSign.dart';
import 'package:flowers_app/view/choosenFlower.dart';
import 'package:flowers_app/view/delivery.dart';
import 'package:flowers_app/view/home.dart';
import 'package:flowers_app/view/logIn.dart';
import 'package:flowers_app/view/payment.dart';
import 'package:flowers_app/view/signUp.dart';
import 'package:flowers_app/view/thanks.dart';
import 'package:flowers_app/view/viewAllBrands.dart';
import 'package:flowers_app/view/viewAllFlowers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: SplashScreen(
      title: "",
    ));
  }
}
