import 'package:blog/Models/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.Name});
  final String Name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          Name,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: currant),
        ),
        SizedBox(
          width: 180,
        ),
        Text(
          "View all",
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w500, color: currant),
        ),
      ],
    );
  }
}
