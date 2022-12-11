import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Component/ListIconCyrcle.dart';
import 'package:flutter_application_1/Component/TextTwoSide.dart';
import 'package:flutter_application_1/Component/buttoncycle.dart';
import 'package:flutter_application_1/Component/listevent.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'package:flutter_application_1/Views/About.dart';
import 'package:flutter_application_1/Views/Contact.dart';
import 'package:flutter_application_1/Views/Halqat.dart';
import 'package:flutter_application_1/Views/SignIn.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 10,),
          Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: SizedBox(height: 50,
           child: TextField( 
           decoration: InputDecoration(hintTextDirection: TextDirection.rtl,
           prefixIcon: Icon(Icons.search),
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(25),
              ),
              fillColor: Color(0xffECF0F1),
              hintText:"بحث"),
               ),
         ),
       ),
       SizedBox(height: 10,),
         TextTwoSide(title: "جميع الأخبار",title1: "  أخبارنا"),
         
          Container(height: 150,
           child: ListView(scrollDirection: Axis.horizontal,
             children: [
               ListIcons(image: "images/worktime.png", title: "أوقات الدوام"),
               ListIcons(image: "images/nafsicon.jpeg", title: " نافس"),
               ListIcons(image: "images/image5.jpeg", title: "تحفة الاطفل"),
               ListIcons(image: "images/image14.jpeg", title: "تسجيل"),              
               ListIcons(image: "images/buy.jpg", title: "التاجر الصغير"),
             ],
           ),
         ),
  
          SizedBox(height: 15,),
          TextTwoSide(title: "جميع الأنشطة",title1: "الأنشطة"),
          Container(
            height: 200,
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ListEvent(title: "تباشير الختام",image:"images/image4.jpeg"),
                ListEvent(title: "عطاء وإرتواء",image:"images/image3.jpeg"),
                ListEvent(title: "محفل أنق",image:"images/image2.jpeg"),
                ListEvent(title: " عودة وفرح",image:"images/image1.jpeg"),
              
              ],
            )
          ),
/////////////////////////////////////////////////////////////////
          Container(
            height: 150,
            child:ListView(scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: EleButtonCycle(icon: Icon(Icons.login),title: "تسجيل",onPressed: () { Get.to(HomePage());},),
                ),
                EleButtonCycle(icon: Icon(Icons.insert_chart_outlined_sharp),title: "إنجازات الحلقات",onPressed: () { Get.to(alqat());},),
                Padding(
                  padding: const EdgeInsets.only(right:15.0),
                  child: EleButtonCycle(icon: Icon(Icons.info_outline_rounded),title: "حول",onPressed: () { Get.to(About());},),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:25.0),
                  child: EleButtonCycle(icon: Icon(Icons.call),title: "تواصل",onPressed: () { Get.to(Contact());},),
                ),
       
              
              ],
            )
          ),



        ],
      ),
    );
  }
}