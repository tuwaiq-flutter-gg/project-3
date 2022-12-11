
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammed_enjaz/Components/myText.dart';
import 'package:muhammed_enjaz/Components/transparantButton.dart';
import 'package:muhammed_enjaz/views/httpPge.dart';
import 'package:muhammed_enjaz/views/showDoc.dart';
import 'package:muhammed_enjaz/views/signUp.dart';

import '../model/Constant/styling.dart' as mystyle;

class signIn extends StatelessWidget {
  const signIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),


      body: ListView(
        children: [
    
         
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 100,),
                Text(" تسجيل الدخول", style: mystyle.titleText()),
                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                          Text("  الاسم  ", style: mystyle.headerText()),
                         ConstrainedBox(
                           
                           constraints: BoxConstraints(
                             maxWidth: 150
                           ),
                           
                           child: myCustomTextField(text: "محمد",))
                      ],
                    ),
                    SizedBox(width: 10,),
                  Column(
                      children: [
                          Text(" كلمة السر ", style: mystyle.headerText()),
                         ConstrainedBox(
                           
                           constraints: BoxConstraints(
                             maxWidth: 150
                           ),
                           
                           child: myCustomTextField(text: "*****",))
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                 
                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () => Get.to(showDoc()),
                      child: Container(
                        alignment: Alignment.center,
                        child: transparentButton(child: Padding(
                          padding: const EdgeInsets.only(left:5.0, right: 5),
                          child: Text("تسجيل الدخول", style: mystyle.regularText(),),
                        )),
                      ),
                    ),
                    SizedBox(width: 10,),
                     InkWell(
                       onTap: () => Get.to(signUp()),
                       child: Container(
                        alignment: Alignment.center,
                        child: transparentButton(child: Padding(
                          padding: const EdgeInsets.only(left:5.0, right: 5),
                          child: Text("انشاء حساب ", style: mystyle.regularText(),),
                        )),
                                         ),
                     ),
                  ],
                )
              ],
            ),
          ),



       
        ],

      ),
   
   
   floatingActionButton: InkWell(
     onTap: () => Get.to(firstPage()),

     child: Icon(Icons.fact_check)),
    );
  }
}