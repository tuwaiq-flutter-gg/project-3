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

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0,centerTitle: true,
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.black, onPressed: () 
        {Get.to(Home());},),
      title:Text("التواصل",style: TextStyle(color: greendark,fontSize: 20,fontWeight: FontWeight.bold),) ,),
      body: ListView(
        children: [
          SizedBox(height: 30,),
          textenter(titel: "نرحب بكم ونسعد لخدمتكم "),
          //Text("نرحب بكم ونسعد لخدمتكم ",style:TextStyle(fontSize: 20,color: greendark) ,),
          TextFileddd(title: "ادخل رقم الجوال",hight: 50,width: 300),
          SizedBox(height: 8,),
          TextFileddd(title: "عنوان المشكلة",hight: 50,width: 300),
          TextFileddd(title: "عرض المشكلة التي تواجهك ليتم التواصل معك في اقرب وقت ممكن",hight: 150,width: 300),
          EleButtons(title: "إرسال",onPressed: () {
            Get.to(Home());
          },),
          ])
        
      );
  }
}