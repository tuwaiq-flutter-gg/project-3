import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammed_enjaz/model/Constant/styling.dart' as myStyle;
class action extends StatelessWidget {
  String text;
   action({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:18, right:18, top: 3, bottom: 3),
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(31),
        color: myStyle.action
        
      ),
      child: Text(text.toString(),style: myStyle.smallText(),)
    );
  }
}