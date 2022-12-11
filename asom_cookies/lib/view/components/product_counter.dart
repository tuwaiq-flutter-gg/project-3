

import 'package:asom_cookies/view/styles/colors.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ProductCounter extends StatelessWidget {
  const ProductCounter({super.key, required this.small});
  final bool small ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: small ? 35 : 75,
      width: small ? 125 : 300,
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor , width: 1 , style: BorderStyle.solid),
        borderRadius: BorderRadius.circular( small ? 10 : 20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          customText(text: '-', size: small ? 20 : 42),
          Column(
            mainAxisAlignment: small ? MainAxisAlignment.center : MainAxisAlignment.end,
            children: [
              customText(text: '25', size: small ? 20 : 30),
              small ? const SizedBox() : customText(text: 'حبة كوكيز', size: 16),
            ],
          ),
          customText(text: '+', size: small ? 20 : 42),
        ],
      ),
      
    );
  }
}