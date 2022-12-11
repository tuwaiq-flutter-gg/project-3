import 'package:flowers_app/components/custButton.dart';
import 'package:flowers_app/view/delivery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class flowerInfo extends StatelessWidget {
  final image;
  final flowerName;
  final flowerComponent;
  final aboutFlower;
  const flowerInfo(
      {super.key,
      required this.image,
      required this.flowerName,
      required this.flowerComponent,
      required this.aboutFlower});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(
          image,
          height: 300,
          width: 300,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffF0E2E9)),
          height: Get.height / 2,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  flowerName,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 109, 46, 72)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: Text(flowerComponent,
                    style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 131, 109, 118))),
              ),
            ),
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 20, bottom: 10),
            //     child: Text("\$60",
            //         style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.white)),
            //   ),
            // ),
            Text(
              "___________________________________________________________",
              style: TextStyle(color: Colors.white),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("About",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 109, 46, 72))),
                )),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                aboutFlower,
                style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 131, 109, 118)),
              ),
            ),
            custButton(press: () {Get.to(delivery());}, text: "Buy It!")
          ]),
        )
      ],
    );
  }
}
