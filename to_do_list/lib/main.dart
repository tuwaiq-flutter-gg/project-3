// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/View/Weather.dart';
import 'package:to_do_list/View/WelcomePage.dart';
import 'package:to_do_list/View/splashPage.dart';

List<Color> ColYel = [Colors.yellowAccent, Colors.amber];
List<Color> ColBlu = [Colors.indigo, Colors.blueAccent];
List<Color> Colpur = [Colors.deepPurpleAccent, Colors.purpleAccent];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(
        goTo: WelcomePage(),
        duration: 5,
      ),
      // home: WeatherForecast(),//tried weather API
    );
  }
}
