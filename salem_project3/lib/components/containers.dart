import 'package:flutter/material.dart';
import 'dart:math' as math;

class Containers extends StatelessWidget {
  Containers(
      {super.key, required this.width, required this.height, this.child, this.func});
  double width;
  double height;
  Widget? child;
  Function()? func;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9),
      child: InkWell(
        onTap: func,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: child,
        ),
      ),
    );
  }
}
