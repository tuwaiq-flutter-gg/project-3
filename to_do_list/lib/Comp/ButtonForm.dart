import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key, required this.title, required this.onPressed});
  final String title;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff9088D4),
        minimumSize: Size(200, 35),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(fontSize: 32),
      ),
    );
  }
}
