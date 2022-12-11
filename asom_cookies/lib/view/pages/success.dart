import 'package:asom_cookies/view/pages/home_page.dart';
import 'package:asom_cookies/view/styles/button.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Succes extends StatelessWidget {
  const Succes({super.key, required this.text});
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              const Spacer(),

              customText(text: text, size: 30),
              const SizedBox(height: 10,),
              Image.asset('images/payments/checked.png' , width: Get.width * 0.60,),
      
              const Spacer(),
      
              CustomButton(small: false, text: 'الصفحة الرئيسية', onTap: () { Get.to( () => const HomePage() ); }, ),
      
              const SizedBox(height: 20 , ),
            ],
          ),
        ),
      ),
    );
  }
}