import 'package:asom_cookies/view/components/custom_app_bar.dart';
import 'package:asom_cookies/view/components/custom_bottom_bar.dart';
import 'package:asom_cookies/view/pages/cart_item.dart';
import 'package:asom_cookies/view/pages/payment.dart';
import 'package:asom_cookies/view/styles/button.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
      
          children: [
      
            // App Bar
            const CustomAppBar(cart: false, drawer: true , title: 'السلة',),
      
            // here you should add a list builder for all the cart items in the back end
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: const [
                  CartItem(),
                  SizedBox(height: 10,),
                  CartItem(),
                ],
              ),
            ),
            
      
      
            // the very buttom section on the page 
            const VerticalDivider(width: 270,),

            const Spacer(),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              customText(text: '120 رس', size: 20),
              const SizedBox(width: 10,),
              customText(text: 'المبلغ الاجمالي', size: 20)
            ],),
      
            CustomButton(small: false, text: 'تأكيد الطلب', onTap: () { Get.to( () => const Payment() ); },),
            const SizedBox(height: 20,),

            const CustomBottomBar(enabled: Enable.cart),
          ],
        ),
      ),

    );
  }
}