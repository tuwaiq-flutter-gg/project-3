import 'package:asom_cookies/view/components/custom_app_bar.dart';
import 'package:asom_cookies/view/components/custom_bottom_bar.dart';
import 'package:asom_cookies/view/styles/button.dart';
import 'package:asom_cookies/view/styles/colors.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
      
            // App Bar
            const CustomAppBar(cart: false, drawer: true , title: 'طلباتي',),

            const SizedBox(height: 10,),
      
            // list of prev orders
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: Get.height * 0.75,
              child: GridView.count(
                crossAxisCount: 1,
                children: 
                  [
                    Column(
                    children: [
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
              
                              customText(text: 'حالة الطلب: مكنمل', size: 20),
                              customText(text: 'تاريخ الطلب: 9\\10\\2022', size: 20),
                              customText(text: 'الإجمالي: 60 رس', size: 16),
                              customText(text: ' كوكيز نيويورك x15 ', size: 16),
                              customText(text: ' كوكيز الجمعات x25', size: 16),
              
                            ],
                          ),

                          const SizedBox(width: 20,),
              
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: primaryColor,
                                style: BorderStyle.solid
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: customText(text: '1', size: 34)),
                          ),
                        ],
                      ),
              
                      // re order button
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomButton(small: true, text: 'الطلب مره أخرى', onTap: () {  },),
                      ),
      
                      // line
                      customText(text: '____________________________________', size: 16),
                      
                      
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),
      
            const CustomBottomBar(enabled: Enable.myOrders),

          ],
        ),
      ),
    );
  }
}