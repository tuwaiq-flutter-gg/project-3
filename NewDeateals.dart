
import 'package:fifaworld/combonat/gooal.dart';
import 'package:fifaworld/combonat/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';



class detealsNews extends StatefulWidget {
  const detealsNews({super.key});

  @override
  State<detealsNews> createState() => _detealsNewsState();
}

class _detealsNewsState extends State<detealsNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      

      body: SafeArea(child: ListView(
        
      children: [Column(
        
        
          children: [
            InkWell(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              
                   Icon(Icons.arrow_back_rounded,size: 50,),
                
                 Text("News  ",
          style: TextStyle(fontSize: 30)),
              ],
            ),
            onTap: () {
              Get.back();
              
            },
            ),

           
         
        
          Container(child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            
            
            child: InkWell(
               
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              
                children: [
                  
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      
                      child: Image.asset("images/News1.png"
                      ,height: 400,width: 400,fit: BoxFit.fill,),
                      
                      
                    ),
                  ),

                 Center(
                   child: Text("___________________",
          style: TextStyle(fontSize: 30)),
                 ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      
                      child: Image.asset("images/News2.png"
                      ,height: 400,width: 400,fit: BoxFit.fill),
                      
                      
                    ),
                  ),

                 Center(
                   child: Text("___________________",
          style: TextStyle(fontSize: 30)),
                 ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      
                      child: Image.asset("images/News3.png",height: 400,width: 400,fit: BoxFit.fill),
                      
                      
                    ),
                  ),

                 Center(
                   child: Text("___________________",
          style: TextStyle(fontSize: 30)),
                 ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      
                      child: Image.asset("images/News5.png",height: 400,width: 400,fit: BoxFit.fill),
                      
                      
                    ),
                  ),

                 Center(
                   child: Text("___________________",
          style: TextStyle(fontSize: 30)),
                 ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      
                      child: Image.asset("images/News4.png",height: 400,width: 400,fit: BoxFit.fill),
                      
                      
                    ),
                  ),
            
                 
              ]),
            ),
            


          ),
          ),
          
          
              











      ],
      )
    ]
    ,)
    ),);
  }}