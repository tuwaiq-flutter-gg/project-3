import 'package:asom_cookies/view/components/custom_app_bar.dart';
import 'package:asom_cookies/view/pages/user_info.dart';
import 'package:asom_cookies/view/styles/button.dart';
import 'package:asom_cookies/view/styles/colors.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            
            const CustomAppBar(cart: false, drawer: false , title: 'الدفع',),

            Container(
              height: Get.height * 0.65,
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  Align( alignment: Alignment.centerRight, child: customText(text: 'تفاصيل الطلب', size: 20)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText(text: '60 رس', size: 20), // product price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          customText(text: 'كوكيز الجمعات', size: 20), // product name
                          customText(text: 'x25', size: 20), // product quantity

                          const SizedBox(width: 10,),

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset('images/products/box.png', height: 100 , width: 100,), // product image
                          )
                        ],
                        
                      ),
                      
                    ],
                  ),

                  const SizedBox(height: 20,),

                  Align( alignment: Alignment.centerRight, child: customText(text: 'اختر طريقة الدفع', size: 20)),

                  SizedBox(
                    height: 300,
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      children: [
                        
                        Container(
                          height: 60,
                          width: 140,
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: primaryColor,
                              style: BorderStyle.solid
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Image.asset('images/payments/Al_Rajhi_Bank_Logo.png'),
                          ),
                        ),

                        Container(
                          height: 60,
                          width: 140,
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: primaryColor,
                              style: BorderStyle.solid
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Image.asset('images/payments/apple-pay.png'),
                          ),
                        ),

                        Container(
                          height: 60,
                          width: 140,
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: primaryColor,
                              style: BorderStyle.solid
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Image.asset('images/payments/mada.png'),
                          ),
                        ),

                        Container(
                          height: 60,
                          width: 140,
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: primaryColor,
                              style: BorderStyle.solid
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Image.asset('images/payments/Stc_pay.png'),
                          ),
                        ),

                        
                      ],
                    ),
                  ),

                ],
              ),
            ),
            

            

            const Spacer(),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              customText(text: '120 رس', size: 20),
              const SizedBox(width: 10,),
              customText(text: 'المبلغ الاجمالي', size: 20)
            ],),
      
            CustomButton(small: false, text: 'المتابعة', onTap: () { Get.to( () => const UserInfo() ); }, ), 
            const SizedBox(height: 20,)

          ],
        ),
      )),
    );
  }
}