

import 'package:asom_cookies/model/products.dart';
import 'package:asom_cookies/view/pages/product_details.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget( this.index , {super.key,});
  final int index ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to( () => ProductDetails(product: products[index]));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          // product image
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: products[index].image,
          )
          ,

          // product name
          customText(text: products[index].name, size: 16),

        ],
      ),
    );
  }
}