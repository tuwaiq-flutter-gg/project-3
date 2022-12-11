import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/constant.dart';

class Profilelabel extends StatelessWidget {
  Profilelabel({super.key, this.profileItemslabel, this.onTap});
  String? profileItemslabel;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            margin: EdgeInsetsDirectional.all(15),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 45,
            width: Get.width,
            decoration: BoxDecoration(
              color: lightColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  profileItemslabel.toString(),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_right,
                  size: 40,
                  color: Colors.white,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
