
import 'package:flutter/material.dart';
import 'package:teatime/constant.dart';

class CustomTextFaild extends StatelessWidget {
   CustomTextFaild({super.key, this.hintText});
String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
    decoration: InputDecoration(
      fillColor: lightColor.withOpacity(0.4),
      filled: true,
      hintText: hintText,
      hintStyle: TextStyle(color: primaryTextColor),
      helperStyle: TextStyle(color: primaryTextColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(3),
        borderSide: BorderSide.none
      )
    ),
    );
  }
}