import 'package:asom_cookies/model/products.dart';
import 'package:asom_cookies/view/components/custom_app_bar.dart';
import 'package:asom_cookies/view/components/custom_bottom_bar.dart';
import 'package:asom_cookies/view/components/product_counter.dart';
import 'package:asom_cookies/view/styles/button.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});
  final Product product ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
      
              // App Bar
              const CustomAppBar(cart: false, drawer: false , title: 'كوكيز الجمعات',),
      
              // product image
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: product.image),
              ),
      
              // product description
              Row(
                children: [
                  Expanded(child: customText(text: product.description, size: 16)),
                ],
              ),
      
              // product counter
              const ProductCounter(small: false),
      
              // add to cart button
              Align( alignment: Alignment.bottomCenter, child: CustomButton(small: false, text: 'إضافة إلى السلة', onTap: () {  },)),

              // const CustomBottomBar(enabled: Enable.nothing)
      
            ],
            
          ),
        ),
      ),

    );
  }
}