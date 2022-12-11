import 'package:asom_cookies/view/components/product_counter.dart';
import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        
        // product price
        customText(text: '60 رس', size: 18),

        
        Column(
          children: [
            // product name
            customText(text: 'كوكيز الجمعات', size: 20),

            // product counter
            const ProductCounter(small: true),

          ],
        ),

        // product image
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset('images/products/box.png'),
        )
      ],
    );
  }
}