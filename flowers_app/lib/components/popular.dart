import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class popular extends StatelessWidget {
  final boxColor;
  final image;
  final name;
  final description;
  final price;

  const popular({
    super.key,
    required this.boxColor,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 2.5,
      height: Get.height / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: boxColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 10, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
              height: Get.height / 5,
              width: Get.width / 5,
            ),
            Center(
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
            ),
            Text("_________________",
                style: TextStyle(color: Color.fromARGB(255, 109, 46, 72))),
            Center(
              child: Text(
                description,
                style: TextStyle(
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 109, 46, 72)),
              ),
            ),
            Center(
              child: Text(price,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 109, 46, 72))),
            )
          ],
        ),
      ),
    );
  }
}
