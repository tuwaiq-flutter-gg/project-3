import 'package:asma_store_projct3/Pages/LogIn.dart';
import 'package:asma_store_projct3/Pages/SingIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(SingeUp());
                    },
                    child: Text("Log in", style: TextStyle(fontSize: 20)),
                  ),
                  Image.asset("images/6997662.png"),
                ],
              ),
            ),
            Text("asma"),
            Text("asma@gmail.com"),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 80,
                width: Get.width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "  My Order",
                      style: TextStyle(fontSize: 20),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 80,
                width: Get.width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "  My informion",
                      style: TextStyle(fontSize: 20),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
