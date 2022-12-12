import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:muhammed_enjaz/model/Constant/styling.dart' as mystyle;

import 'actionContainer.dart';

class MyActionContainer extends StatelessWidget {
  List<Widget> myActions;
   MyActionContainer({super.key, required this.myActions});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 1,
      child: Container(
        width: 310,
        decoration: BoxDecoration(
          color: mystyle.timelineThick,
          borderRadius: BorderRadius.circular(31.77),
          
        ),
        padding: EdgeInsets.only(top: 10,bottom: 10,left: 5,right: 5),
        
     
    
child:FractionallySizedBox(
  widthFactor: 1,
  
  child:   Center(
    child: Wrap(
               
                direction: Axis.horizontal,
                alignment: WrapAlignment.end,
                children: myActions,
              ),
  ),
),
   
      ),
    );

  }
}