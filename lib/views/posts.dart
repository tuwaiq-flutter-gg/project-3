import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rescue_app/components/categoryButton.dart';
import 'package:rescue_app/components/customTextField.dart';
import 'package:rescue_app/components/postCard.dart';
import 'package:rescue_app/style.dart';
import 'package:rescue_app/views/newPost.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Home",
            style: GoogleFonts.openSans(
              fontSize: 24,
              color: colors.Text,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(() => newPost());
              },
              icon: Icon(CupertinoIcons.add),
              color: colors.Text,
            ),
          ],
        ),
        body: ListView(
          children: [
            customTextField(
              name: "",
              keyboardType: TextInputType.text,
              prefixIcon: Icon(
                CupertinoIcons.search,
                size: 18,
                color: colors.icons,
              ),
              hint: "Search for a pet",
              isPass: false,
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            postCard(
              postType: "Lost cat",
              imagePath: "images/lostCat.jpeg",
              comments: "Last seen in Riyadh, Alfalah district ",
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            postCard(
              postType: "We found it",
              imagePath: "images/FoundDog.jpeg",
              comments: "Seen at lulu hypermarket ",
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
          ],
        ));
  }
}
