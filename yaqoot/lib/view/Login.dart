import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yaqoot/components/button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log out",style: TextStyle(color: Colors.black,fontSize: 28),),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black)
      ),
      body: ListView(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Text("Log out in yaqoot Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              decoration:InputDecoration(fillColor:Color(0xffFFFFFF),filled: true,
              hintText: "Enter your password",
              
               ) ,
               
            ),
          ),
          B1(name: "Log out",onPressed:(){})
        ],
      ),
    );
  }
}