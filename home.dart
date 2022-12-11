


import 'package:fifaworld/combonat/NewDeateals.dart';
import 'package:fifaworld/combonat/gooal.dart';
import 'package:fifaworld/combonat/http.dart';
import 'package:fifaworld/combonat/mobarh.dart';
import 'package:fifaworld/combonat/profail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("World Cup"),),
      drawer: Drawer(backgroundColor: Color.fromARGB(255, 239, 235, 235),
        child:Column(mainAxisAlignment:
       MainAxisAlignment.center,
        children:[
      InkWell(child: Icon(Icons.person,size: 50,color: Colors.blue,),
     
           onTap: () {
                   Get.to(Profils());
                },
                
          ),
          SizedBox(height: 20,),
          InkWell(child: Icon(Icons.settings,size: 50,color: Colors.red,),
          
         
           onTap: () {
                   Get.to(Http());
                },)

      ]) ,
        
      ),
      


    
      //  
      backgroundColor: Color.fromARGB(255, 233, 230, 230),

      body: SafeArea(child: ListView(
        
      children: [Column(
        
          children:
          [
             SizedBox(height:20,),
            Container(
            decoration: BoxDecoration (color:
              Color.fromARGB(255, 212, 206, 206),
              borderRadius: BorderRadius.circular(16),
              
              ),
               height: 48,width: 355,
              child: Row(children: [
                Icon(Icons.search,size: 30,),
                Text("Welcme To The World Cup")

              ],
              )
          ),
          SizedBox(height:20,),
          Center(child: InkWell(child: Text("Match Result",
          style: TextStyle(fontSize: 30),
          
          ),
           onTap: () {
                   Get.to( Result ());
                },
          )
          ),
          SizedBox(height: 10,),
          //استعملت سنقل تشيلد سكرورل فيو هروزنتل
          Container(child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            
            
            child: InkWell(
               
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              
                children: [
                  
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                      
                      child: Image.asset("images/Saudi1.png",height: 150,width: 150,),
                      
                      
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                      
                      child: Image.asset("images/polanda.png",height: 150,width: 150,),
                      
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                      
                      child: Image.asset("images/mak.png",height: 150,width: 150,),
                      
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                      
                      child: Image.asset("images/parazil.png",height: 150,width: 150,),
                      
                    ),
                  ),
              ]),
            ),
            


          ),
          ),
           SizedBox(height: 20,),
          Center(child: Text(" Latest News ",style: TextStyle(fontSize: 30),)),
          SizedBox(height: 10,),

          //استعملت سنقل تشيلد سكرول فيو فيرتكل
         Container(child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            
            
            child: InkWell(
               
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              
                children: [
                  
                  
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                      
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        
                        child: Image.asset("images/News4.png",
                        height: 300,width: 355,fit:BoxFit.fill,),
                        
                        
                        
                        
                      ),
                    ),
                     onTap: () {
                   Get.to( detealsNews ());
                },
                  ),
                  
            
                 
              ]),
            ),
            


          ),
          ),
          SizedBox(height: 20,),
          Center(child: InkWell(child: Text("The Best Goals",
          style: TextStyle(fontSize: 30),
          
          ),
           onTap: () {
                   Get.to( VideoGoal ());
                },
          )
          ),
          
          
              




              











      ],
      )
    ]
    ,)
    ),




















    );
  }
}