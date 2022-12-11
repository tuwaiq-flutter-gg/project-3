import 'package:asma_store_projct3/Componants/LineColors.dart';
import 'package:asma_store_projct3/Componants/buttom.dart';
import 'package:asma_store_projct3/Pages/Page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
                LineColor(Color1: Color.fromARGB(255, 161, 155, 155)),
                LineColor(Color1: Colors.black),
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
            child: Image.asset("images/8872357.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text(
                  "Our latest product",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
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
              mineButtom(
                onTap: () {
                  Get.to(Page3());
                },
                text: 'Next',
              )
            ],
          )
        ],
      )),
    );
  }
}
