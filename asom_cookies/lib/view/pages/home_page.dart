import 'package:asom_cookies/model/products.dart';
import 'package:asom_cookies/view/components/custom_app_bar.dart';
import 'package:asom_cookies/view/components/custom_bottom_bar.dart';
import 'package:asom_cookies/view/components/product.dart';
import 'package:asom_cookies/view/pages/allergy.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
        
            // custom app bar
            const CustomAppBar(cart: false, drawer: true),
        
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  customText(text: 'ألذ كوكيز فيك يالرياض', size: 30),
                  Container(
                    height: 195,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Image.asset('images/home/image 1.png'),
                  ),
                  
                ],
              ),
        
            ),
        
            const SizedBox(height: 30,),
        
            SizedBox(
              height: Get.height * 0.40,
              width: 300,
              child: GridView.builder(
                itemCount: products.length,
                
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 , childAspectRatio: 0.9), 
                itemBuilder: (context, index) {
                  return ProductWidget(index) ;
                }
                
              ),
            ),

            const Allergy(),
          
            const CustomBottomBar(enabled: Enable.home),
        
          ],
        ),
      ),


    );
  }
}