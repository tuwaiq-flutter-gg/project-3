import 'package:flutter/material.dart';
import 'package:muhammed_enjaz/Components/Ijraa.dart';
import 'package:muhammed_enjaz/Controllers/ijraaCont.dart';
import 'package:muhammed_enjaz/model/Constant/styling.dart' as mystyle;


import 'package:get/get.dart';
import 'package:muhammed_enjaz/Components/timline.dart';

class showIjraa extends StatelessWidget {
  const showIjraa({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        
      ),



      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("محمد عبدالله العقيل", style: mystyle.titleText(), ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text("شهادة ميلاد  ", style: mystyle.smallText(), ),

                     Text(": نوع المعامله", style: mystyle.regularText(), ),
                   ],
                 ),
                   Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text(" ١١٠٢٣٩٨٢٣١  ", style: mystyle.smallText(), ),

                     Text(": رقم الهويه", style: mystyle.regularText(), ),
                   ],
                 ),
             
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                children: [
                
                                      Text(" منتهيه  ", style: mystyle.smallText(), ),

                                      Text(": الحاله", style: mystyle.regularText(), ),

                ],
                ),
                 InkWell(
                 
                   child: Container(
                     margin: EdgeInsets.only(right:5, top: 10),
                      height: 40,
                      width: Get.width*.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color:Color.fromARGB(57, 221, 218, 218),
                        border: Border.all(color: mystyle.text)
                      ),
                      child: Center(child: Icon(Icons.add)),
                 
                 
                 
                    ),
                 ),
           
    
               Container(
                 height: Get.height*.6,

        
                 child: GridView.builder(
              
                                itemCount: 12,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                childAspectRatio: 1.4
                                

                              ), itemBuilder: (context, index){
                               int state=2;
                              if(index==0){
                                return  Obx(()=>InkWell(
         onTap: (){
                      if( ijraCont.index.value!=2){
                     ijraCont.index.value= ijraCont.index.value+1;
                   
                     }
                     else{
                         ijraCont.index.value= 0;
                     }
                       print( ijraCont.index.value);
                   },
       child: timeline(state: ijraCont.index.value,)),);
                              }
                                return timeline(state: state,);
                              }),
               ),
                        
                       
           
           
           
              ],
            ),
          )
        ],
      ),
    );
  }
}