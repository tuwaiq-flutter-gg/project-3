import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFildStyle extends StatelessWidget {
  const TextFildStyle({super.key, required this.labelText});
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: "${labelText}",
          filled: true,
          fillColor: Color.fromARGB(255, 216, 213, 213),
          enabledBorder: OutlineInputBorder(
              //borderSide: BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(25))),
    );
  }
}
