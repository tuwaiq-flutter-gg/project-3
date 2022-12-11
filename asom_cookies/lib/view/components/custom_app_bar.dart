

import 'dart:core';
import 'package:asom_cookies/view/pages/cart.dart';
import 'package:asom_cookies/view/styles/colors.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.cart, required this.drawer, this.title});
  final bool cart ;
  final bool drawer ;
  final String? title ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        
        cart ? // if ( cart == true )

        InkWell(onTap: () {
          Get.to( () => const Cart());
        },
        child: IconButton(onPressed: () {
          Get.to( () => const Cart());
        }, icon: const Icon(Icons.shopping_cart_outlined , color: primaryColor,)), // cart icon
        ) 
        
        // else ( cart == false )
        : const SizedBox() , // any empty widget

        
        title != null ? // if there is title 
        customText(text: title!, size: 30) // show it
        :const SizedBox(), // else ( don't show anything )


        drawer ? // if ( drawer == true )

        const SizedBox()
        
        : // else ( drawer == false )
        IconButton(onPressed: () {
          Get.back();
        }, icon: const Icon(Icons.navigate_next_rounded , color: primaryColor,)),

      ],

    );
  }
}