import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Component/ElevatedButton.dart';
import 'package:flutter_application_1/Component/Text.dart';
import 'package:flutter_application_1/Component/TextFiled.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'package:flutter_application_1/Views/Home.dart';
import 'package:flutter_application_1/Views/StudentPage.dart';
import 'package:flutter_application_1/Views/regester.dart';
import 'package:get/get.dart';

import '../main.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0,centerTitle: true,
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.black, onPressed: () 
        {Get.to(Home());},),
      title:Text("تسجيل الدخول",style: TextStyle(color: greendark,fontSize: 20,fontWeight: FontWeight.bold),) ,),
      body: ListView(
        children: [
          SizedBox(height: 60,),
          textenter(titel:"اسم المستخدم"),
          TextFileddd(title: "ادخل اسم المستخدم أو رقم الجوال",hight: 50,width: 350),
          SizedBox(height: 20,),
          textenter(titel:"كلمة المرور "),
          TextFileddd(title: "ادخل كلمة المرور ",hight: 50,width: 350),
         SizedBox(height: 20,),
          EleButtons(title: "تسجيل الدخول",onPressed: () {
            Get.to(Home());
          },),
         SizedBox(height: 20,),

          EleButtons(title: "إنشاء حساب جديد",onPressed: () {
            Get.to(Regester());
          },),
        ],
      ),
    );
  }
}