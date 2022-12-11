


import 'package:fifaworld/combonat/gooal.dart';
import 'package:fifaworld/combonat/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';

class loginIn extends StatelessWidget {
  const loginIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 246, 246),
      
      body: SafeArea(
        child: Column(
          children: [
              Image.asset("images/logo.png"), 
              SizedBox(height: 20,),
               Text("SIGN IN",style:
               TextStyle(fontSize: 30,
               fontWeight: FontWeight.w700,
               color: Color.fromARGB(255, 1, 0, 0)
               ),
               ),
               SizedBox(height: 40,),
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
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text("Password :",style: 
                  TextStyle(fontSize: 20,color: Color.fromARGB(255, 0, 0, 0)),),
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
                      //خاصية اخفاء الباسورد
                      obscureText: true,
                      decoration: InputDecoration(
                        border:InputBorder.none,
                        hintText: "Password",
                      ),
                     ),
                   ),
                 ),
               ),
               SizedBox(height: 20,),
               InkWell(
                onTap: () {
                   Get.to( Home ());
                },
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(color: Color.fromARGB(255, 219, 215, 215),
                    borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Text("Sign In",selectionColor: Colors.black,style: TextStyle(fontSize: 16),))),
                 ),
               )
               

        ]
        ),
      ),

    );
  }
}