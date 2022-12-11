import 'package:flutter/material.dart';

class DigitalProducts extends StatelessWidget {
  const DigitalProducts(
      {super.key,
      required this.productName,
      required this.productImage,
      required this.productPrice});
  final String productName;
  final String productImage;
  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Container(
              color: Colors.white,
              child: Column(children: [
                Container(
                  height: 100,
                  width: 80,
                  child: Image.asset(
                    productImage,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Text(
                  productName,
                  style: TextStyle(fontSize: 16),
                )),
                SizedBox(
                  height: 10,
                ),
                Text("${productPrice} SAR")
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
