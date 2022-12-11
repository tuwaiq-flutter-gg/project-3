import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Component/ElevatedButton.dart';
import 'package:flutter_application_1/Views/About.dart';
import 'package:flutter_application_1/Views/Home.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
//////////////////////////////////////////////
List post=[];


Future getPost()async{
//final url= Uri.parse("https://mp3quran.net/api/v3/suwar?language=eng");
final url= Uri.parse("https://mp3quran.net/api/v3/riwayat?language=eng");
final response= await http.get(url);
var responsebody= jsonDecode(response.body) ;

setState(() {
   post.addAll(responsebody);
});

}
//////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(backgroundColor: Colors.white, elevation: 0,centerTitle: true,
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.black, onPressed: () 
        {Get.to(About());},),
      title:Text("المصحف",style: TextStyle(color: greendark,fontSize: 20,fontWeight: FontWeight.bold),) ,),
      body: 
      ListView.builder(itemCount: post.length,itemBuilder: (context, index) {
        return Text("${post[index]["name"]}");
      },),
      //EleButtons(title: "السورة",onPressed: getPost,)
      );
  }
}