import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/Constant/styling.dart' as mystyle;

class transparentButton extends StatelessWidget {
  Widget child;
   transparentButton({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:5,bottom: 5,left: 10,right: 10),

      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(21),
        border: Border.all(color: mystyle.text)
      ),

      child: child,
    );
  }
}