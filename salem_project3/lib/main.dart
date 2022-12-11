import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salem_project3/pages/signin.dart';

void main() {
  runApp(const MyApp());
}

Color lightgrey = Color.fromARGB(255, 223, 223, 223);
Color maincolor = Color.fromARGB(255, 100, 5, 163);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Signin(),
      debugShowCheckedModeBanner: false,
    );
  }
}
