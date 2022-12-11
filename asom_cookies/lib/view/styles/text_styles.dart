import 'package:asom_cookies/view/styles/colors.dart';
import 'package:flutter/material.dart';

Text customText({ required String text , required double size , Color? color}){
  return Text(text , style: TextStyle(fontSize: size, color: color ?? textColor ),);
}