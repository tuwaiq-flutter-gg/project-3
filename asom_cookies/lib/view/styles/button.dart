import 'package:asom_cookies/view/styles/colors.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.small, required this.text, required this.onTap});
  final bool small ; 
  final String text ;
  final void Function() onTap ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: small ? 50 : 70,
        width: small ? 200 : 300,
    
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular( small ? 10 : 20 ) , 
        ),
    
        child: Center(child: customText(text: text, size: 30 , color: Colors.white)),
    
      ),
    );
  }
}