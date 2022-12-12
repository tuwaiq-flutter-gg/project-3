import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammed_enjaz/Controllers/reportController.dart';

import 'package:muhammed_enjaz/model/Constant/styling.dart' as mystyle;

class report extends StatelessWidget {
  const report({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: ListView(

        children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  
                  Text(" تسجيل الدخول", style: mystyle.titleText()),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    
                       Row(
                         children: [
                             InkWell(
                               onTap: () => reportCont.report.value=true,
                               child: Icon(Icons.filter_frames_sharp)),
                           Text("  اخر اسبوع", style: mystyle.headerText()),
                         ],
                       ),
                          Row(
                            children: [
                              Icon(Icons.filter_frames_sharp),
                                Text("  اخر شهر", style: mystyle.headerText()),
                            ],
                          ),
                     
                    ],
                  )
                ],
              ),
            ), 
            Center(child: Container(width: Get.width*.9, height: 2, color: mystyle.text,)),

            SizedBox(height: 15,),
          Obx(()=>reportCont.report.value==true? Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Text("خلال الاسبوع الماضي عملت على ٣٠ معامله و قمت بارسال ٥ خطابات الى الشرطه ، واجريت ١٣ اتصال ", style: mystyle.regularText()),
          ):Text(""),)  
        ],
      ),
    );
  }
}