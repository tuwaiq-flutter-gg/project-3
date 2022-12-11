import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project3/component/textFieldNumber.dart';
import 'package:project3/view/otbPage.dart';

class EnterNumberPage extends StatelessWidget {
  const EnterNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Enter your phone number",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.more_vert_rounded,
                size: 35,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text: "WhatsApp will need to verify your phone number.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "\n What’s my number?",
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
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Saudi Arabia"),
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 35,
                )
              ],
            ),
          ),
          Container(
            width: 230,
            height: 1,
            color: Color(0xff00A884),
          ),
          SizedBox(
            height: 5,
          ),
          TextFN(),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(() => OTBpage());
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xff00A884)),
              child: Text("Next"))
        ],
      )),
    );
  }
}
