
import 'package:fifaworld/combonat/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Profils extends StatelessWidget {
  const Profils({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
   body: SafeArea(child: Column(
      children:[
        SizedBox(height: 5,),
        
        
        InkWell(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back_rounded,size: 50,
            
            
             ),
             
           
          ],
        ),
        onTap: () {
          Get.to(Home());
          
        },
        ),
       
        
        SizedBox(height: 20,),
        
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children:
       [

                 ClipRRect(child:Image.asset("images/profiles.png",
                 height: 300,width: 300,),borderRadius:
                  BorderRadius.circular(200), ),
                 
                  
                   ]


    ,),
     SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 275),
                  child: Text("Name :",style: 
                  TextStyle(fontSize: 20,color: Color.fromARGB(255, 21, 21, 21)),),
                ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  decoration: BoxDecoration(color: Color.fromARGB(255, 219, 215, 215),
                  borderRadius: BorderRadius.circular(20)
                  ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: TextField(
                      decoration: InputDecoration(
                        border:InputBorder.none,
                        hintText: "Name",
                      ),
                     ),
                   ),
                 ),
               ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 275),
                  child: Text("Phone:",style: 
                  TextStyle(fontSize: 20,color: Color.fromARGB(255, 21, 21, 21)),),
                ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  decoration: BoxDecoration(color: Color.fromARGB(255, 219, 215, 215),
                  borderRadius: BorderRadius.circular(20)
                  ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: TextField(
                      decoration: InputDecoration(
                        border:InputBorder.none,
                        hintText: "Phone",
                      ),
                     ),
                   ),
                 ),
               ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 275),
                  child: Text("City:",style: 
                  TextStyle(fontSize: 20,color: Color.fromARGB(255, 21, 21, 21)),),
                ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  decoration: BoxDecoration(color: Color.fromARGB(255, 219, 215, 215),
                  borderRadius: BorderRadius.circular(20)
                  ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: TextField(
                      decoration: InputDecoration(
                        border:InputBorder.none,
                        hintText: "City",
                      ),
                     ),
                   ),
                 ),
               ),
               Icon(Icons.app_registration_rounded,size: 50,)
    
       
             












   ])),


 







    );
  }
}