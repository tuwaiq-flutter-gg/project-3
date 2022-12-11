

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:myevent/components.dart/navbarr.dart';
import 'package:myevent/pages/Signup.dart';
import 'package:myevent/pages/login.dart';
main() {
  runApp(MyApp()); 
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

home:regster()   ,


    );
  }
}