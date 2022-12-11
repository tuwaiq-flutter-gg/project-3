import 'package:flutter/material.dart';
import 'package:flutter_application_1/Component/ElevatedButton.dart';
import 'package:flutter_application_1/Views/Contact.dart';
import 'package:flutter_application_1/Views/Home.dart';
import 'package:flutter_application_1/Views/SignIn.dart';
import 'package:flutter_application_1/Views/StudentPage.dart';
import 'package:flutter_application_1/Views/TeacherPage.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column( 
        mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Image.asset("images/learnlogo.png",scale: 3,fit: BoxFit.fill),
                  ),
                  Image.asset("images/logoDar.png",scale: 4,fit: BoxFit.fill,),
                ],
              ),
            ),
          ),
          
          SizedBox(height: 100,),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text("دار منيرة الدريويش",style: TextStyle(color: greendark,fontSize: 23,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            ),
          ),

         SizedBox(height: 30,),
          Center(
            child: EleButtons(title: "معلمة", 
            onPressed: () {Get.to(Teacher()); },
              ),           
           ),
              SizedBox(height: 20,),
              Center(
            child: EleButtons(title: "طالبة",
              onPressed: (){Get.to (SignIn());}, 
              ),
              ),
               
            
               ]),
               ));
  }
}