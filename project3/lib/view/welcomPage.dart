import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:project3/view/enterNumberPage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              "Welcome to WhatsApp",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 60,
            ),
            CircleAvatar(
              radius: 120,
              child: Image.asset("images/image 1.png"),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      text: "Read our ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "Privacy Policy.",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color.fromARGB(255, 51, 33, 243),
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text: "Tap “Agree and continue”\nto accept the ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: "Teams of Service.",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color.fromARGB(255, 51, 33, 243),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 250,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff00A884)),
                  onPressed: () {
                    Get.off(() => EnterNumberPage());
                  },
                  child: Text(
                    "AGREE AND CONTINUE",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "from",
              style: TextStyle(color: Color(0xff867373)),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 165),
              child: Row(
                children: [
                  Container(
                      width: 15,
                      height: 15,
                      child: Image.asset("images/meta-icon.png")),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Meta")
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
