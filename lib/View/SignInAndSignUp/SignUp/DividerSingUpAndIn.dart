
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/constant.dart';

class DividerSingUpAndIn extends StatelessWidget {
  const DividerSingUpAndIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 1,
            width: 40,
            color: lightColor),
          Text("Or By", style: TextStyle(color: lightColor),),
          Container(
            height: 1,
            width: 40,
            color: lightColor),

            
    
        ],
      ),
    );
  }
}
