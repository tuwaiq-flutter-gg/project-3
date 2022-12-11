import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_3/Home%20Page.dart';
import 'package:project_3/Pages/Home.dart';
import 'package:project_3/Pages/Quick%20login.dart';
import 'package:project_3/Pages/Sign%20up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
