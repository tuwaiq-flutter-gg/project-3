import 'package:asma_store_projct3/Componants/LineColors.dart';
import 'package:asma_store_projct3/Componants/buttom.dart';
import 'package:asma_store_projct3/Pages/Home.dart';
import 'package:asma_store_projct3/Pages/LogIn.dart';
import 'package:asma_store_projct3/Pages/n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
                LineColor(Color1: Color.fromARGB(255, 161, 155, 155)),
                LineColor(
                  Color1: Colors.black),
                
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 400,
            width: 300,
            child: Image.asset("images/5272932.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text(
                  "we are the ",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
          Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "best",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
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
              mineButtom(
                onTap: () {
                  Get.to(PageNav());
                }, text: 'Next',
              )
            ],
          )
        ],
      )),
    );
  }
}
