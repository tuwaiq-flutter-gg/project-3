import 'dart:ui';
import 'package:asom_cookies/view/pages/home_page.dart';
import 'package:asom_cookies/view/pages/cart.dart';
import 'package:asom_cookies/view/pages/more.dart';
import 'package:asom_cookies/view/pages/my_orders.dart';
import 'package:asom_cookies/view/styles/colors.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Enable {
  more,
  home,
  cart,
  myOrders,
  nothing,

}

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key, required this.enabled});
  final Enable enabled ;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: Get.width,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            Expanded(
              child: InkWell(
                onTap: () {
                  Get.to( () => const More() ); // add more page
                },
                child: Container(
                  height: 70,
                  
                  decoration: BoxDecoration(
                    color: enabled == Enable.more ? primaryColor : Colors.transparent , 
                    
                  ),
                  
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          Icon(Icons.more_horiz_rounded , color: enabled == Enable.more ? Colors.white : primaryColor ,),
                          customText(text: 'المزيد', size: 15 , color: enabled == Enable.more ? Colors.white : primaryColor ),
                        ],
                      ),
                ),
              ),
            ),

            Expanded(
              child: InkWell(
                onTap: () {
                  Get.to( () => const MyOrders() ); 
                },
                child: Container(
                  height: 70,
                  
                  decoration: BoxDecoration(
                    color: enabled == Enable.myOrders ? primaryColor : Colors.transparent , 
                    
                  ),
                  
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          Icon(Icons.playlist_add_check_rounded , color: enabled == Enable.myOrders ? Colors.white : primaryColor ,),
                          customText(text: 'طلباتي', size: 15 , color: enabled == Enable.myOrders ? Colors.white : primaryColor ),
                        ],
                      ),
                ),
              ),
            ),

            Expanded(
              child: InkWell(
                onTap: () {
                  Get.to( () => const Cart() );
                },
                child: Container(
                  height: 70,
                  
                  decoration: BoxDecoration(
                    color: enabled == Enable.cart ? primaryColor : Colors.transparent , 
                    
                  ),
                  
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          Icon(Icons.shopping_cart_outlined , color: enabled == Enable.cart ? Colors.white : primaryColor ,),
                          customText(text: 'السلة', size: 15 , color: enabled == Enable.cart ? Colors.white : primaryColor ),
                        ],
                      ),
                ),
              ),
            ),

            Expanded(
              child: InkWell(
                onTap: () {
                  Get.to( () => const HomePage() );
                },
                child: Container(
                  height: 70,
                  
                  decoration: BoxDecoration(
                    color: enabled == Enable.home ? primaryColor : Colors.transparent , 
                    
                  ),
                  
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          Icon(Icons.home_outlined , color: enabled == Enable.home ? Colors.white : primaryColor ,),
                          customText(text: 'الرئيسية', size: 15 , color: enabled == Enable.home ? Colors.white : primaryColor ),
                        ],
                      ),
                ),
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}


