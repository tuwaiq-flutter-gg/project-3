import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:project3/view/messagePage.dart';

class ChatComp extends StatelessWidget {
  ChatComp(
      {super.key,
      this.name,
      this.countmess,
      this.image,
      this.message,
      this.time});
  String? image;
  String? name;
  String? message;
  String? time;
  String? countmess;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => MessagePage());
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            SizedBox(
              width: 6,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "$image",
                  width: 75,
                  height: 75,
                )),
            SizedBox(
              width: 7,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$name",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "$message",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  Text(
                    "$time",
                    style: TextStyle(
                        color: Color(0xff075e55),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: 22,
                    height: 22,
                    alignment: Alignment.center,
                    child: Text(
                      "$countmess",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xff075e55),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
