import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/constant.dart';

class TeaCard extends StatelessWidget {
  TeaCard({super.key, this.teaImage, this.teaName, this.teaPrice});

  String? teaName;
  double? teaPrice;
  String? teaImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(6),
      height: 190,
      width: 150,
      decoration: BoxDecoration(
          color: lightColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: FittedBox(
                fit: BoxFit.fill, child: Image.asset(teaImage.toString())),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Divider(
              height: 5,
              thickness: 2,
              color: greenColor.withOpacity(0.5),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Column(
                children: [
                  Text(
                    teaName.toString(),
                    style: TextStyle(color: primaryTextColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("\$${teaPrice}",
                          style: TextStyle(
                              color: primaryTextColor,
                              fontWeight: FontWeight.bold)))
                ],
              )),
              IconButton(
                  onPressed: () {
                    Get.snackbar("Added To Cart",
                        "The product has been added to the cart successfully",
                        icon: Icon(
                          Icons.check,
                          color: Colors.green,
                          
                        ));
                  },
                  icon: Icon(
                    Icons.add_circle_outlined,
                    color: greenColor,
                    size: 30,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
