import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rescue_app/components/customTextField.dart';
import 'package:rescue_app/components/primaryButton.dart';
import 'package:rescue_app/components/textButton.dart';
import 'package:rescue_app/components/toggleSwitch.dart';
import 'package:rescue_app/controllers/userController.dart';
import 'package:rescue_app/style.dart';
import 'package:rescue_app/views/Home.dart';
import 'package:rescue_app/views/SignIn.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    userController controller = Get.find();
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.02,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: Get.height * 0.02, horizontal: Get.width * 0.09),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: Get.width * 0.15,
                  height: Get.height * 0.07,
                  child: CircleAvatar(
                    maxRadius: 100,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "images/logo.png",
                          fit: BoxFit.fitWidth,
                        )),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.05,
                ),
                Text(
                  "Create Your Account",
                  style: GoogleFonts.openSans(
                    fontSize: 22,
                    color: colors.Text,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          customTextField(
            name: "Name",
            prefixIcon: Icon(
              CupertinoIcons.person_fill,
              size: 18,
              color: colors.icons,
            ),
            isPass: false,
            hint: "Enter your name",
            controller: controller.nameController,
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          customTextField(
            name: "Phone number",
            keyboardType: TextInputType.phone,
            prefixIcon: Icon(
              CupertinoIcons.phone_fill,
              size: 18,
              color: colors.icons,
            ),
            isPass: false,
            hint: "Enter your phone number",
            controller: controller.phoneController,
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          customTextField(
            name: "Email",
            prefixIcon: Icon(
              Icons.alternate_email_rounded,
              size: 18,
              color: colors.icons,
            ),
            isPass: false,
            keyboardType: TextInputType.emailAddress,
            hint: "Enter your email",
            controller: controller.emailController,
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          customTextField(
            name: "Password",
            keyboardType: TextInputType.visiblePassword,
            prefixIcon: Icon(
              CupertinoIcons.lock_fill,
              size: 18,
              color: colors.icons,
            ),
            hint: "Enter your password",
            isPass: true,
            controller: controller.passController,
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          Center(
            child: toggleSwitch(
              Question: "Are you a pet owner?",
            ),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          primaryButton(
            title: 'Sign Up',
            onPressed: () {
              Get.off(() => Home());
            },
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  color: colors.hyperlinks,
                  fontWeight: FontWeight.normal,
                ),
              ),
              textButton(
                name: "Sign In",
                underline: true,
                onPressed: () {
                  Get.off(() => SignIn());
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
