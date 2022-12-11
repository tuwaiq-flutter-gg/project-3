import 'package:flutter/material.dart';
import 'package:perject_3/views/navigationPage.dart';
import 'package:perject_3/views/profilePage.dart';
import 'package:perject_3/views/singInPsge.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigaitonPage(),
    );
  }
}
