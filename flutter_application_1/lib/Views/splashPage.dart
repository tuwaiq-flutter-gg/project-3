 
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Views/Home.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3),
          ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) =>  Home()) ));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:Image.asset("images/logoDar.png",fit:BoxFit.contain)
    );
  }
}