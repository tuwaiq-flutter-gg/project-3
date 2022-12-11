import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/View/Custom/CustomButton.dart';
import 'package:teatime/View/Custom/CustomTextFaild.dart';
import 'package:teatime/constant.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        centerTitle: true,
        title: Text("Change Password"),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(dPadding),
          child: SizedBox(
            height: Get.height * 0.40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Creat New Password:", style: TextStyle(color: primaryTextColor, fontSize: 18 ,fontWeight: FontWeight.bold),)),
                CustomTextFaild(hintText: "Enter New Password"),
                CustomTextFaild(hintText: "Re-enter New Password"),
                CustomButton(buttonText: "Save", buttonGroundColor: greenColor, onPressed: (){
              AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.rightSlide,
                    title: 'Password Changed',
                    btnOkOnPress: () {},
                    )..show();
                },)
              ],
            ),
          ),
        )
      ]),
    );
  }
}
