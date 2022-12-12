import 'package:flutter/material.dart';
import 'package:muhammed_enjaz/model/Constant/styling.dart' as mystyle;


class circleLine extends StatelessWidget {
  bool? filled;
  Color filling= mystyle.timelineThick;
   circleLine({super.key, this.filled}){
     if(filled==false){
      filling=mystyle.timlineLight;
     }
   }

  @override
  Widget build(BuildContext context) {
    return  Flexible(
  fit: FlexFit.loose,

      child: Container(
     
        child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              
                
             Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: filling,
                        border: Border.all(color: mystyle.timelineThick, width: 3),
                        borderRadius: BorderRadius.circular(1000)
                      ),
                              
                            
                  ),
               Expanded(
                 child: Container(
                      margin: EdgeInsets.only(top: 6,bottom: 6),
                      width: 3,
                      color: mystyle.timlineLight,
                    ),
               ),
                
              ],
          
      
        ),
      ),
    );
  }
}