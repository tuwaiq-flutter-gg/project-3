import 'package:flutter/material.dart';

class Profilebtns extends StatelessWidget {
  const Profilebtns({super.key, required this.btnName});
  final String btnName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          btnName,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.black,
        )
      ],
    );
  }
}
