import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rescue_app/components/chatPreview.dart';
import 'package:rescue_app/components/customTextField.dart';
import 'package:rescue_app/style.dart';

import 'package:rescue_app/views/contacts.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Messages",
          style: GoogleFonts.openSans(
            fontSize: 24,
            color: colors.Text,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => Contacts());
            },
            icon: Icon(CupertinoIcons.add),
            color: colors.Text,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: ListView(
          children: [
            customTextField(
              name: "",
              keyboardType: TextInputType.text,
              prefixIcon: Icon(
                CupertinoIcons.search,
                size: 18,
                color: colors.icons,
              ),
              hint: "Search for a converstion",
              isPass: false,
            ),
            SizedBox(
              height: Get.height * 0.035,
            ),
            Text(
              "Recents",
              style: GoogleFonts.openSans(
                fontSize: 20,
                color: colors.Text,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            chatPreview(
              name: "Sara",
              lastMsg: "See u soon",
              time: "10:23PM",
              numOfUnseenMsg: 13,
              imagePath: "images/pic1.webp",
              onTap: () {},
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            chatPreview(
                name: "Reema",
                lastMsg: "Ok",
                time: "7:23PM",
                numOfUnseenMsg: 4,
                imagePath: "images/pic2.jpeg",
                onTap: () {}),
            SizedBox(
              height: Get.height * 0.01,
            ),
            chatPreview(
                name: "Mohammed",
                lastMsg: "Let me know",
                time: "27 May",
                numOfUnseenMsg: 2,
                imagePath: "images/pic3.jpeg",
                onTap: () {}),
            SizedBox(
              height: Get.height * 0.01,
            ),
            chatPreview(
                name: "Nouf",
                lastMsg: "Thank you",
                time: "23 May",
                numOfUnseenMsg: 0,
                imagePath: "images/pic6.jpeg",
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
