import 'package:flutter/material.dart';

import '../model/Constant/styling.dart' as mystyle;

class ijraa extends StatelessWidget {
  final myController= TextEditingController();
  String header;
   ijraa({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(header.toString(),style: mystyle.regularText(),),
        FractionallySizedBox(
  
          widthFactor: .9,
          

          child: Container(
            margin: EdgeInsets.only(bottom: 20, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(31),
              color: mystyle.timlineLight
            ),
            alignment: Alignment.topRight,
            child:Column(
              children: [TextField(
                textAlign: TextAlign.end,
                controller: myController,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                   
                    minHeight: 140
                  ),
                  border: InputBorder.none,
                  hintText: "ادخل ملاحظه",
                  contentPadding: EdgeInsets.only(top: 10,right: 20)
                  
                ),
              ),
              
           
              
              ]
            ) ,


          ),
        ),
        Center(
          
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5,right: 20,left: 20),
                      child: Icon(Icons.add)),
                 
        ), ],
    );
  }
}