import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:rescue_app/components/ProfileCards.dart';
import 'package:rescue_app/components/editProfileCard.dart';
import 'package:rescue_app/components/primaryButton.dart';
import 'package:rescue_app/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rescue_app/views/Home.dart';

class editProfile extends StatelessWidget {
  const editProfile({super.key});

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
          "Edit Profile",
          style: GoogleFonts.openSans(
            fontSize: 24,
            color: colors.Text,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: Get.height * 0.05,
          ),
          Container(
            width: Get.width * 0.1,
            height: Get.height * 0.15,
            child: CircleAvatar(
              maxRadius: 50,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "images/pic5.jpeg",
                    fit: BoxFit.fitWidth,
                  )),
            ),
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          editProfileCard(
            title: "Name",
            icon: CupertinoIcons.person_fill,
            isPass: false,
            hint: "HADEEL",
            name: 'Name',
            enabled: true,
          ),
          SizedBox(
            height: Get.height * 0.04,
          ),
          editProfileCard(
            title: "Phone number",
            icon: CupertinoIcons.phone_fill,
            isPass: false,
            hint: "0505039838",
            name: 'Name',
            enabled: true,
          ),
          SizedBox(
            height: Get.height * 0.04,
          ),
          editProfileCard(
            title: "Password",
            icon: CupertinoIcons.lock_fill,
            isPass: true,
            hint: "*****",
            name: 'Name',
            enabled: true,
          ),
          SizedBox(
            height: Get.height * 0.06,
          ),
          primaryButton(
            title: 'Save',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Your Information Updated Successfully 🎉'),
                  backgroundColor: colors.primary));
            },
          ),
        ],
      ),
    );
  }
}
