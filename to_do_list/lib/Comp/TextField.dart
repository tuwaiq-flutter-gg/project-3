// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  const textfield({super.key, required this.Title, required this.con});

  final String Title;
  final TextEditingController con;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        controller: con,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          fillColor: Color(0xffE7E6F5),
          labelText: Title,
        ),
      ),
    );
  }
}
