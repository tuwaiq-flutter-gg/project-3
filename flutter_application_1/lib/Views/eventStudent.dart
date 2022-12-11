import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Component/AddTask.dart';
import 'package:flutter_application_1/Views/Halqat.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class EventStudent extends StatelessWidget {
  const EventStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(backgroundColor: Colors.white, elevation: 0,centerTitle: true,
        leading:  IconButton(icon: Icon(Icons.arrow_back_ios_rounded),color: Colors.black, onPressed: () 
        {Get.to(alqat());},),
      title:Text("إنجاز الحلقات",style: TextStyle(color: greendark,fontSize: 20,fontWeight: FontWeight.bold),) ,),
      floatingActionButton: FloatingActionButton(onPressed: (){
      showModalBottomSheet(isScrollControlled: true,context: context, builder: (context)=> 
      SingleChildScrollView(child: Container(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: AddTask())),); },
      backgroundColor: green,
      child: Icon(Icons.add),),
      body: 
       GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            Image.asset("images/image8.jpeg"),
            Image.asset("images/image9.jpeg"),
            Image.asset("images/image10.jpeg"),
            Image.asset("images/image11.jpeg"),
            Image.asset("images/image12.jpeg"),
            Image.asset("images/image13.jpeg"),
            Image.asset("images/image14.jpeg"),

    
          ]
          ),
    );
  }
}