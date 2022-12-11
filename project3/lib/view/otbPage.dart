import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:project3/component/textFOTP.dart';
import 'package:project3/view/homePage.dart';

class OTBpage extends StatelessWidget {
  const OTBpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Enter OTP Code",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 200,
            ),
            Text("Code has been send to +966 55******25"),
            SizedBox(
              height: 50,
            ),
            TextFOtp(),
            SizedBox(
              height: 50,
            ),
            Container(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.off(() => HomePage());
                  },
                  child: Text("Next"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff00A884),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
