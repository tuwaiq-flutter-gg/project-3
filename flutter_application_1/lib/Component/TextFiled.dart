
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class TextFileddd extends StatelessWidget {
  const TextFileddd({super.key, this.title, this.width, this.hight});
final String? title;
final double? hight,width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hight!.toDouble(),
      width: width!.toDouble(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Align(alignment: Alignment.centerRight,
          child: TextField(
          decoration: InputDecoration(
           filled: true,
           hintTextDirection: TextDirection.rtl,
           border: OutlineInputBorder(
             borderSide: BorderSide.none,
             // borderRadius: BorderRadius.circular(25),
             ),
              hintMaxLines: 20,
             fillColor: whiter,
             hintText:title.toString(),),
              ),
        ),
      ),
    );
          
  }
}