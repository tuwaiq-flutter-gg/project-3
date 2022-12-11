import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCircleImage extends StatelessWidget {
   MyCircleImage({super.key,required this.image});
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(1.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.grey, width: 3)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset("$image",
                  width: 55, height: 55, fit: BoxFit.cover),
            ),
          );
  }
}