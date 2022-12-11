import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class TextFOtp extends StatefulWidget {
  const TextFOtp({super.key});

  @override
  State<TextFOtp> createState() => _TextFOtpState();
}

class _TextFOtpState extends State<TextFOtp> {
  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 4,
      fieldWidth: 60,
      enabledBorderColor: Colors.black,
      focusedBorderColor: Color(0xff00A884),
      borderColor: Color(0xff00A884),
      showFieldAsBox: true,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      onCodeChanged: (String code) {},
      onSubmit: (String verificationCode) {
        Get.defaultDialog(
            title: "Verification Code",
            middleText: "Authentication completed successfully");
      },
    );
  }
}
