import 'package:flowers_app/components/Brand.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class viewAllBrands extends StatelessWidget {
  const viewAllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color.fromARGB(255, 223, 222, 217),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Image.asset(
            "images/bg.png",
            height: Get.height,
            width: Get.width,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              width: Get.width,
              height: Get.height,
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Brand(image: "images/Bateel.png"),
                      Brand(image: "images/Godiva.png")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Brand(image: "images/Fayendra.png"),
                      Brand(image: "images/CH.png")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Brand(image: "images/Bostani.png"),
                      Brand(image: "images/Dior.png")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Brand(image: "images/missL.png"),
                      Brand(image: "images/Damas.png")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Brand(image: "images/Patchi.png"),
                      Brand(image: "images/Swarovski.png")
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
