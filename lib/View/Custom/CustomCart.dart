
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/constant.dart';

class CustomCart extends StatelessWidget {
  CustomCart({super.key, this.delImage, this.delName, this.delPrice});

  String? delName;
  String? delImage;
  double? delPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:dPadding),
      padding: EdgeInsets.all(10),
      height: 100,
      width: Get.width,
      decoration: BoxDecoration(
          color: lightColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Image.asset(delImage.toString()),
        title: Text(delName.toString()),
        subtitle: Text("\$${delPrice}"),
        trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete_forever_outlined,
              color: greenColor,
              size: 30,
            )),
      ),
    
    );
  }
}
