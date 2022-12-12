import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:muhammed_enjaz/model/Constant/styling.dart' as mystyle;

class document extends StatelessWidget {
  String? shehab, state, docName, summary, name;
  dynamic? date;
  Color background=mystyle.maktab, scribble=mystyle.maktabThick;
  String from="وارد من المكتب";
   document({super.key, this.date ,this.shehab, this.docName,this.name,this.summary,this.state}){
     if(shehab?.contains("شهاب")==true){
       scribble=mystyle.shehabThick;
 background=mystyle.shihab;
 from="وارد من شهاب";
     }
   }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Container(
            height: Get.height*.03,
            width: Get.width*.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft:Radius.circular(21),topRight:Radius.circular(21) ),
              color: background
            ),
            child: Center(
            child: 
            Text(from.toString(), style: mystyle.smallText(),),
            ),
          ),


          
                // Container(
                //   height: Get.height*.25,
                //   width: Get.width*.9,

                //   padding: EdgeInsets.only(right: Get.width*.1),
                //   child: ImageIcon(AssetImage("images/Group 1.png"),
                //   // color: background,
                //   ),
                // ),


                Container(
                    height: Get.height*.24,
                  width: Get.width*.9,
                  padding: EdgeInsets.all(10),
   decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: background
            ),
            child:  Stack(
              
              children: [
                
                  Container(
                  height: Get.height*.24,
                  width: Get.width*.9,

                  padding: EdgeInsets.only(left: Get.width*.3),
                  child: ImageIcon(AssetImage("images/Group 1.png"),
                  color: scribble,
              
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(state.toString(), style: mystyle.regularText(),),
                       Text(docName.toString(), style: mystyle.titleText(),),
            
                      ],
                    ),
            
                    Container(
                      height: Get.height*.1,
                      child:Text(summary.toString(), style: mystyle.regularText(),),
            
                    ),
            
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month_outlined),
                            Text(date.toString(), style: mystyle.smallText(),),

                          ],
                        ),
                       Text(name.toString(), style: mystyle.smallText(),),
            
                      ],
                    ),
                  ],
              ),
                ),
              
              
              
              ]
            ) ,
                )


          
        ] ,
      
    );
  }
}