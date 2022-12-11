import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class EleButtons extends StatelessWidget {
  const EleButtons({super.key, required this.title, required this.onPressed});
final String title;
final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size(200, 50),primary: green,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),),
              onPressed: onPressed, 
              child: Text(title.toString(),style: TextStyle(color: white,fontSize: 20,fontWeight: FontWeight.bold ),),
            )
              );
  }
}