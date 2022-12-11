import 'package:blog/Models/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldCom extends StatelessWidget {
  const TextFieldCom(
      {super.key,
      this.HintText,
      this.Icon,
      required this.FieldColor,
      this.liens});
  final String? HintText;
  final Icon;
  final FieldColor;
  final liens;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: liens,
      cursorColor: brouwn,
      decoration: InputDecoration(
        prefixIcon: Icon,
        iconColor: brouwn,
        prefixIconColor: brouwn,
        hintText: HintText,
        hintStyle: TextStyle(fontSize: 15),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: FieldColor, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: FieldColor, width: 0),
        ),
        filled: true,
        fillColor: FieldColor,
        border: InputBorder.none,
      ),
    );
  }
}
