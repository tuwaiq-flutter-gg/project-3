import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yaqoot/view/Home.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: Home_Page(),
      theme: ThemeData(appBarTheme:AppBarTheme(backgroundColor: Color(0xffFFFFFF), ),
      scaffoldBackgroundColor: Color.fromARGB(255, 221, 220, 220),
      
    )
    );
  }
}
