
import 'package:flutter/material.dart';
import 'package:movie_app_project/componant/textfield.dart';
import 'package:movie_app_project/pages/Signlogin.dart';
import 'package:movie_app_project/pages/homepage.dart';
import 'package:movie_app_project/style.dart';
import 'package:get/get.dart';
import '../widgets/secondbackground-image.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: 
        [
          secBackgroundImage(),
          Scaffold(
             backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Column(
                
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                         IconButton(onPressed: (){
                           Get.to(signlogPage());

                        }, icon: Icon(Icons.arrow_back_ios) , color: Colors.white,),
                        Text(
                          "Hello",
                          style: heading,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:25 ),
                child: Row(
                  children: [
                    Text(
                      "Let's get ",
                      style:TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Text("Started",style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 100, 2, 148), fontWeight: FontWeight.w500),)
                    
                  ],
                ),
                 
              ),
              Container(
                child: Column(
                  children: [
                    textfield(labeltext: "Enter User Name"),
                    SizedBox(height: 20,),
                    textfield(labeltext: "Enter Email"),
                    SizedBox(height: 20,),
                    textfield(labeltext: "Enter Password"),
                    SizedBox(height: 20,),
                    textfield(labeltext: "Confirm Password"),
                    SizedBox(height: 20,),
                    Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 100, 2, 148)),
                    child: Center(
                        child: TextButton(
                            onPressed: () {
                             Get.to(homepage());
                            },
                            child: Text(
                              "Sign Up",
                              style: buttonText,
                            ))),
                  ),
                ),

                    
                  ],
                ),
              )
            ],
            

          )
          ),
        ),
      ],
    );
  }
}
