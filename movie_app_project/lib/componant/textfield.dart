import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class textfield extends StatelessWidget {
  const textfield({super.key, required this.labeltext});
  final String labeltext;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            filled: true,
            labelText: labeltext,
            fillColor: Color.fromARGB(175, 236, 240, 241)),
      ),
    );
  }
}
