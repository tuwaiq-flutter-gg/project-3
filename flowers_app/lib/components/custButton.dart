import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class custButton extends StatelessWidget {
  
  final Function press;
  final text;
  const custButton({super.key, required this.press,required this.text});

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: press as void Function()?,
      child: Container(
        margin: EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 82, 50, 62),
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
                fontSize: 23, color: Colors.white, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }}
  

