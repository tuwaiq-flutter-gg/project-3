import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import '../model/Constant/styling.dart' as mystyle;
class completedAction extends StatelessWidget {
  const completedAction({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
  
      widthFactor: 1,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 200,
        child: Column(

crossAxisAlignment: CrossAxisAlignment.end, 
        children:[ 
           Text("taht dersah",style: mystyle.headerText()),

            SizedBox(height: 10,),
           Expanded(
             child: Container(
               child: Text("data",style: mystyle.regularText()) ,
             ),
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Icon(Icons.delete_outline_outlined),
               Icon(Icons.edit)
             ],
           )
         
         ]
        ),
      ));
  }
}