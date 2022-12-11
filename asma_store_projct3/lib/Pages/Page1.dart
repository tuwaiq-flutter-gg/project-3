import 'package:asma_store_projct3/Componants/LineColors.dart';
import 'package:asma_store_projct3/Pages/Page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                LineColor(Color1: Colors.black),
                LineColor(
                  Color1: Color.fromARGB(255, 161, 155, 155),
                ),
                LineColor(
                  Color1: Color.fromARGB(255, 161, 155, 155),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 400,
            width: 300,
            child: Image.asset("images/8872350.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text(
                  "Shine with",
                  style: TextStyle(fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "us",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(Page2());
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 32, 31, 31)),
                  child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
