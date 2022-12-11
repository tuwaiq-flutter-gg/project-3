import 'package:asma_store_projct3/Pages/Home.dart';
import 'package:asma_store_projct3/Pages/Page1.dart';
import 'package:asma_store_projct3/Pages/SingIn.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Page1(),
    );
  }
}
