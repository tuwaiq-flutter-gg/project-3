import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammed_enjaz/Components/CompletedAction.dart';
import 'package:muhammed_enjaz/Components/Ijraa.dart';

import 'MyActionContainer.dart';
import 'actionContainer.dart';
import 'lineCircle.dart';


class timeline extends StatelessWidget {
 

  List inside= [[
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
  ],
  [ijraa(header: "تحت الدراسه",)],
[completedAction()]
  ];

  int state;
  bool? filled;
   timeline({super.key, required this.state}){
     if(state!=2){
       filled=false;
     }else{
       filled=true;
     }
   }


  @override
  Widget build(BuildContext context) {
    return Container(
        
      height: Get.height*.3,

      margin: EdgeInsets.only(top: 20),
        
         child: Row(

           mainAxisAlignment: MainAxisAlignment.start,
           children: [
   SizedBox(width: 10,),
         circleLine(filled: filled,),
SizedBox(width: 10,),
                 MyActionContainer(myActions: inside[state],),
               
           ],


         ),
       );
  }
}