import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:muhammed_enjaz/Components/Doucment.dart';
import 'package:muhammed_enjaz/Components/MyActionContainer.dart';
import 'package:muhammed_enjaz/Components/actionContainer.dart';
import 'package:muhammed_enjaz/Components/lineCircle.dart';
import 'package:muhammed_enjaz/Components/myText.dart';
import 'package:muhammed_enjaz/Components/timline.dart';

class test extends StatelessWidget {
  test({super.key});
  List<action> myActions = [
    action(text: "تحت الدراسه"),
    action(text: "اتسفسار من انظمة الجوازات"),
    action(text: "خطاب مدير مكتب"),
    action(text: "اتصال"),
    action(text: "خطاب جوازات"),
    action(text: "خطاب الشرطه"),
    action(text: "خطاب المحكمه"),
      action(text: "خطاب الشؤون الصحيه"),
    action(text: "خطاب مدير عام"),
    action(text: "خطاب لجنه فرعيه"),
    action(text: "خطاب لجنه محليه"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Center(child: action(text:"${Get.width} الدراسه")),
          Center(child: action(text: "اتسفسار من انظمة الجوازات")),
       
   
       document(),
        document(shehab: "شهاب",),
      //  timeline(),
      //     timeline(),
      //        timeline(),
      //           timeline(),
myCustomTextField(search: true, text: "بحث بالهويه",)
        ],
      ),
    );
  }
}
