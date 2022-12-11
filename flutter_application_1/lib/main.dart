import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'package:flutter_application_1/Views/Home.dart';
import 'package:flutter_application_1/Views/splashPage.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

Color pink=Color(0xffF9CEEE);
Color greendark=Color(0xff0F3D3E);
Color green=Color(0xff97C4B8);
Color yellowlite=Color(0xffF9F3EE);
Color whiter= Color(0xffE9E5D6);
FontWeight bold= FontWeight.bold;
Color white= Colors.white;


main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}