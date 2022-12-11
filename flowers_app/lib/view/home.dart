import 'package:flowers_app/components/Brand.dart';
import 'package:flowers_app/components/flowerBox.dart';
import 'package:flowers_app/components/popular.dart';
import 'package:flowers_app/components/tip.dart';
import 'package:flowers_app/components/types.dart';
import 'package:flowers_app/components/viewallText.dart';
import 'package:flowers_app/view/viewAllBrands.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:flowers_app/view/viewAllFlowers.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 235, 238),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          ListView(children: [
            Padding(padding: const EdgeInsets.all(40), child: tip()),
            // Padding(
            //   padding: const EdgeInsets.all(30),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       typeOfItem(circleColor: Color(0xffAD557A), circleName: "flowers"),
            //       typeOfItem(circleColor: Color(0xffECF0F1), circleName: "vases"),
            //       typeOfItem(circleColor: Color(0xffECF0F1), circleName: "plants"),
            //     ],
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(viewAllFlowers());
                      },
                      child: Text(
                        "view all",
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
            ),

            SizedBox(
              height: Get.height / 2.6,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    flower1(),
                    SizedBox(
                      width: 20,
                    ),
                    flower2(),
                    SizedBox(
                      width: 20,
                    ),
                    flower3()
                  ],
                ),
              ),
            ),
            viewText(
                text: "Brands",
                viewallText: "view all",
                onpressed: () {
                  Get.to(viewAllBrands());
                }),

            SizedBox(
              height: Get.height / 6,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Brand(image: "images/tous.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Brand(image: "images/Godiva.png"),
                    SizedBox(
                      width: 20,
                    ),
                    // Brand(image: "images/Fayendra.png"),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Brand(image: "images/Bateel.png"),
                  ],
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
