import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';


class TextTwoSide extends StatelessWidget {
  const TextTwoSide({super.key,this.title,this.title1});
final String? title,title1;

  @override
  Widget build(BuildContext context) {
    return 
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: TextButton(child: Text(title.toString(),style: TextStyle(color: greendark),),onPressed: (() { }),)
         // child: Text(title.toString(),style: TextStyle(color: greendark,),),
        ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: TextButton(child: Text(title.toString(),style: TextStyle(color: greendark,fontWeight: bold,fontSize: 20 ),),onPressed: (() { }),)
            //child: Text(title1.toString(),style: TextStyle(color:greendark,fontWeight: bold,fontSize: 20 )),
          ),
      ],
     );

  }
}