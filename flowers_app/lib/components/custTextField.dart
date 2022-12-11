import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class custTextField extends StatelessWidget {
  final text;
  const custTextField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      margin: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 227, 227, 227),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text!,
          hintStyle: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
