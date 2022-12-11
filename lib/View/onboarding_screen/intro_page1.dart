
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/constant.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: Get.height * 0.55,
          width: Get.width * 0.50,
          child: Image.asset("images/onboarding/IntroPicPage1.png")),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 150,
            decoration: BoxDecoration(
              color: lightColor.withOpacity(0.3),
              borderRadius: BorderRadius.only(topLeft:Radius.circular(50) , bottomLeft:Radius.circular(50) )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome in a Tea Time world..!", style: TextStyle(color: primaryTextColor, fontWeight: FontWeight.bold, fontSize: 20),),
                SizedBox(height: 15,),
                Text("We provide all kinds of tea with high quality and speed to different regions.", textAlign: TextAlign.center, style: TextStyle(color: primaryTextColor.withOpacity(0.7), height: 1.5, fontSize: 15),),
              ],
            ),)
      ],
    );
  }
}