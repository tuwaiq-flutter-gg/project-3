import 'package:flutter/material.dart';
import 'package:project_3/Assest/Colors.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key, required this.title, required this.textFiledIcon, this.control});
  final String title;
  final Icon textFiledIcon;
  final TextEditingController? control;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: control,
        decoration: InputDecoration(
            prefixIcon: textFiledIcon,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(style: BorderStyle.none)),
            filled: true,
            fillColor: GrayColor,
            labelText: title),
      ),
    );
  }
}
