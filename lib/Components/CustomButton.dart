import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class defultbutton extends StatelessWidget {
  const defultbutton(
      {super.key,
      required this.text,
      required this.press,
      required this.color});
  final String? text;
  final Function press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press as void Function()?,
      child: Container(
        margin: EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        height: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Center(
          child: Text(
            text!,
            style: GoogleFonts.alata(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
