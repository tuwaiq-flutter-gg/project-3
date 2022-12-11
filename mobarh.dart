

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      backgroundColor: Color.fromARGB(255, 245, 243, 243),
      
    body: SafeArea(child: Column(
       
      

   mainAxisAlignment: MainAxisAlignment.start,
    
      children:
      
      
      
       [ SizedBox(height: 20,),
        InkWell(child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back_rounded,size: 50,
             ),
          ],
        ),
        onTap: () {
          Get.back();
          
        },
        ),
        
        
        SizedBox(height:60,),
       
                  
                
                 Text(" Result ",
          style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
             
          
          
            
            SizedBox(height: 20),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                      
                      child: Image.asset("images/mak.png",height: 130,width: 130,),
                      
                      
                    ),
                  ),
                   Text(" X",
          style: TextStyle(fontSize: 40),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                      
                      child: Image.asset("images/polanda.png",height: 130,width: 130,),
                      
                      
                    ),
                  ),
      ],
      
      ),
      SizedBox(height:25),
      Text("___________________________________________________"),
      SizedBox(height: 20),
       Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Text("Shots:",
          style: TextStyle(fontSize: 40),),
           Text(" ",
          style: TextStyle(fontSize: 30),),
           Text(" 8",
          style: TextStyle(fontSize: 40),),
        
       ],
        




       ),
       SizedBox(height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Attacks:",
          style: TextStyle(fontSize: 40),),
           Text(" ",
          style: TextStyle(fontSize: 30),),
           Text(" 22 ",
          style: TextStyle(fontSize: 40),),
        

        
       ],



        ),
        SizedBox(height: 20),
         Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Acquistion:",
          style: TextStyle(fontSize: 40),),
           Text(" ",
          style: TextStyle(fontSize: 30),),
           Text(" 42 ",
          style: TextStyle(fontSize: 40),),
        

        
       ],



         ),
         SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Card:",
          style: TextStyle(fontSize: 40),),
           Text(" ",
          style: TextStyle(fontSize: 30),),
           Text(" 3 ",
          style: TextStyle(fontSize: 40),),
        

        
       ],
          ),
          SizedBox(height: 20,),
          Text("___________________________________________________"),
      

































    ],)),
    );
  }
}