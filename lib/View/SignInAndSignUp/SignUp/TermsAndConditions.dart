
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/constant.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            activeColor: primaryTextColor,
            value: true,
            onChanged: (value) {}),
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: " I agre On ",
              style: TextStyle(color: primaryTextColor)),
          TextSpan(
              text: "Terms & Conditions",
              style: const TextStyle(
                  color: primaryTextColor,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.defaultDialog(
                    backgroundColor: greenColor,
                    title: "Terms & Conditions",
                    titleStyle: TextStyle(color: Colors.white),
                    middleText: "A Terms and Conditions agreement is where you let the public know the terms, rules and guidelines for using your website or mobile app. They include topics such as acceptable use, restricted behavior and limitations of liability.",
                    middleTextStyle:
                        TextStyle(color: Colors.white ,  ),
                  );
                }),
        ]))
      ],
    );
  }
}
