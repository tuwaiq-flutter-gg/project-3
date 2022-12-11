import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammed_enjaz/views/createDoc.dart';
import 'package:muhammed_enjaz/views/createiD.dart';
import 'package:muhammed_enjaz/views/httpPge.dart';
import 'package:muhammed_enjaz/views/report.dart';
import 'package:muhammed_enjaz/views/showDoc.dart';
import 'package:muhammed_enjaz/views/showIjraa.dart';
import 'package:muhammed_enjaz/views/signUp.dart';
import 'package:muhammed_enjaz/views/signin.dart';

import 'views/test.dart';

main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(


      home: signIn(),

    );
  }
}