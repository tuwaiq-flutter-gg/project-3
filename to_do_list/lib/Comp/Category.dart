// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class category extends StatelessWidget {
  category({
    super.key,
    required this.ColorCate,
    required this.tit,
    required this.goto,
  });

  final List<Color> ColorCate;
  final String tit;
  final Widget goto;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(goto),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            border: Border.all(
              color: Colors.white70,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
              colors: ColorCate,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 2.0, offset: Offset(2.0, 2.0))
            ]),
        height: Get.height / 6,
        width: Get.width / 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(AssetImage("images/$tit.png")),
            Text(tit.toString()),
          ],
        ),
      ),
    );
  }
}
