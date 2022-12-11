import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/constant.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: Get.height * 0.55,
          width: Get.width * 0.50,
          child: Image.asset("images/onboarding/IntroPicPage2.png")),
          Container(
            margin: EdgeInsets.only(right: 20),
            height: 150,
            decoration: BoxDecoration(
              color: lightColor.withOpacity(0.3),
                            borderRadius: BorderRadius.only(topRight:Radius.circular(50) , bottomRight:Radius.circular(50) )

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you smell the Tea  ", style: TextStyle(color: primaryTextColor, fontWeight: FontWeight.bold, fontSize: 20),),
                    Image.asset("images/onboarding/CupOfTea.png")
                  ],
                ),
                SizedBox(height: 15,),
                Text("We offer fruit and herbal tea and also receive your requests and suggestions to meet your needs.", textAlign: TextAlign.center, style: TextStyle(color: primaryTextColor.withOpacity(0.7), height: 1.5, fontSize: 15)),
              ],
            ),)
      ],
    );
  }
}