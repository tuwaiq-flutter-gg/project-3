import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SectionsMakeUp extends StatelessWidget {
  SectionsMakeUp({super.key, required this.image, required this.name});
  String image;
  String name;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: EdgeInsets.all(5),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
              child: Image.asset(
            image,
          )),
        ),
      ),
      Text(
        name,
        style: TextStyle(fontSize: 20),
      )
    ]);
  }
}
