import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Component/TextFiled.dart';
import 'package:flutter_application_1/Model/Task.dart';
import 'package:flutter_application_1/main.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("إضافة إنجاز",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,color: greendark,fontWeight: bold),),
          TextField(
            autocorrect: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
           filled: true,
           hintTextDirection: TextDirection.rtl,
           border: OutlineInputBorder(
             borderSide: BorderSide.none,))),
            SizedBox(height: 30,),
          TextButton(onPressed: (){},
           child: Text("إضافة",style: TextStyle(fontSize: 20,fontWeight: bold),),style: TextButton.styleFrom(backgroundColor: green,primary: white,),)
        ],
      ),
    );
  }
}