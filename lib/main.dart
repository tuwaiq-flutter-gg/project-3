import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rescue_app/views/Profile.dart';
import 'package:rescue_app/views/SignIn.dart';
import 'package:rescue_app/style.dart';
import 'package:rescue_app/views/SignUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: colors.background,
      ),
      home: SignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
