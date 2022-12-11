import 'package:flutter/material.dart';
import '../main.dart';

class Txtf extends StatelessWidget {
  Txtf({super.key, required this.hint, this.pwd, this.control});
  TextEditingController? control;
  String hint;
  bool? pwd;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: pwd!,
      textAlign: TextAlign.left,
      controller: control,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          contentPadding: EdgeInsets.all(16),
          fillColor: lightgrey),
    );
  }
}
