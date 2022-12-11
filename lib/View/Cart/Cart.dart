import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/Data/deletdProduct.dart';
import 'package:teatime/View/Custom/CustomCart.dart';
import 'package:teatime/constant.dart';

class Cart extends StatelessWidget {
  Cart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(dPadding),
          child: SizedBox(
            height: Get.height * 0.80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: 
                    List.generate(
                      deletdProduct.length,
                   (index) => CustomCart(
                    delName: deletdProduct[index]["teaName"],
                    delImage: deletdProduct[index]["teaImage"],
                    delPrice: deletdProduct[index]["teaPrice"],
                    )), 
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: dPadding),
                  height: 100,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)
                    ),
                    color: lightColor.withOpacity(0.2)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text("Total: \$43.2", style: TextStyle(color: primaryTextColor, fontWeight: FontWeight.bold, fontSize: 18),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: greenColor
                      ),
                      onPressed: (){}, child: Text("CheckOut"))
                  ]),
                ),
              ],
              
            ),
          ),
        )
      ],
    ));
  }
}
