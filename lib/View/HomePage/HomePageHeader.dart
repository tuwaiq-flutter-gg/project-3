import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: dPadding),
            child: Text(
              "Hello,,\nSarah Abdulrahman",
              style: TextStyle(
                  color: primaryTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          RotatedBox(
              quarterTurns: 3,
              child: SizedBox(
                  width: 100,
                  child: Opacity(
                      opacity: 0.7,
                      child: Image.asset(
                          "images/SingInAndUp/BackGroundImage1.jpg")))),
        ],
      ),
    );
  }
}
