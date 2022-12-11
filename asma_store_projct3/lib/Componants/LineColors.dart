import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LineColor extends StatelessWidget {
  const LineColor({super.key, this.Color1,});
  final Color1;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: (Get.width / 3) - 20,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(50), color: Color1),
    );
  }
}
