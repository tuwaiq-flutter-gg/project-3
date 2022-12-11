import 'package:asom_cookies/view/components/custom_app_bar.dart';
import 'package:asom_cookies/view/components/custom_bottom_bar.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
        Column(
          children: [
            
            const CustomAppBar(cart: false, drawer: true , title: 'تواصل معنا'),

            const Spacer(),

            Image.asset('images/home/instagram.png', height: 250 , width: 250 , ),

            const Spacer(),
            
            Image.asset('images/home/whatsapp.png', height: 250 , width: 250 , ),

            const Spacer(),

            const CustomBottomBar(enabled: Enable.more),
            

          ],
        ),
      ),
    );
  }
}