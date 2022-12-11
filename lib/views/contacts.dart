import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rescue_app/components/contact.dart';
import 'package:rescue_app/components/customTextField.dart';
import 'package:rescue_app/style.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: colors.Text,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Contacts",
          style: GoogleFonts.openSans(
            fontSize: 24,
            color: colors.Text,
            fontWeight: FontWeight.bold,
          ),
        ),
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
              hint: "Search for a contact",
              isPass: false,
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Contact(
              name: "Sara",
              imagePath: "images/pic1.webp",
              number: "0564343422",
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Contact(
              name: "Nouf",
              imagePath: "images/pic6.jpeg",
              number: "053434344",
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Contact(
              name: "Mohammed",
              imagePath: "images/pic3.jpeg",
              number: "0532323299",
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Contact(
              name: "Reema",
              imagePath: "images/pic2.jpeg",
              number: "054322999",
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Contact(
              name: "Naif",
              imagePath: "images/pic8.jpeg",
              number: "0564343422",
            ),
          ],
        ),
      ),
    );
  }
}
