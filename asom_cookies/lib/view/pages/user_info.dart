import 'package:asom_cookies/view/components/custom_app_bar.dart';
import 'package:asom_cookies/view/pages/success.dart';
import 'package:asom_cookies/view/styles/button.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            const CustomAppBar(cart: false, drawer: true , title: 'زودنا بمعلوماتك',),

            Align( alignment: Alignment.centerRight, child: customText(text: 'اسمك', size: 20)),

            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  style: BorderStyle.solid,

                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            const SizedBox(height: 20,),

            Align( alignment: Alignment.centerRight, child: customText(text: 'رقم جوالك', size: 20)),

            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  style: BorderStyle.solid,

                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            const Spacer(),

            CustomButton(small: false, text: 'متابعة', onTap: () {
              Get.to( () => const Succes(text: 'تم تأكيد طلبك') );
            },)


          ],
        ),
      ),
    );
  }
}