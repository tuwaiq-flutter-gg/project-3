import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Component/ElevatedButton.dart';
import 'package:flutter_application_1/Component/Text.dart';
import 'package:flutter_application_1/Component/TextFiled.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'package:flutter_application_1/Views/Home.dart';
import 'package:flutter_application_1/Views/SignIn.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class Regester extends StatelessWidget {
  const Regester({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: whiter, elevation: 0,centerTitle: true,
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.black, onPressed: () 
        {Get.to(SignIn());},),
      title:Text("إنشاء حساب",style: TextStyle(color: greendark,fontSize: 20,fontWeight: FontWeight.bold),) ,),
      body: Align(alignment: Alignment.centerRight,
        child: ListView(
          children: [
            SizedBox(height: 10,),
            textenter(titel:"الاسم رباعي"),
            TextFileddd(title: "ادخل الاسم رباعي",hight: 50,width: 350),
            SizedBox(height: 8,),
            textenter(titel:"رقم الجوال "),
            TextFileddd(title: "ادخل رقم الجوال ",hight: 50,width: 350),
            SizedBox(height: 8,),
            textenter(titel:"البريد الإلكتروني"),
            TextFileddd(title: "ادخل البريد الإلكتروني",hight: 50,width: 350),
            SizedBox(height: 8,),
            textenter(titel:"تاريخ الميلاد "),
            TextFileddd(title: "ادخل تاريخ الميلاد ",hight: 50,width: 350),
            SizedBox(height: 8,),
            textenter(titel:"العنوان "),
            TextFileddd(title: "ادخل العنوان ",hight: 50,width: 350),
           SizedBox(height: 15,),
            EleButtons(title: " حفظ",onPressed: () {
              Get.to(SignIn());
            },),
      
      
          ],
        ),
      ),
    );
  }
}