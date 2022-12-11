import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/View/Custom/CustomButton.dart';
import 'package:teatime/View/Profile/CircleAvatarProfile.dart';
import 'package:teatime/View/Profile/Profilelabel.dart';
import 'package:teatime/constant.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(dPadding),
          child: SizedBox(
            height: Get.height * 0.99,
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  left: 0,
                  child: Center(
                    child: Container(
                      height: 550,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: lightColor.withOpacity(0.5)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Sarah Abdulrahman",
                                  style: TextStyle(
                                      color: primaryTextColor, fontSize: 20),
                                ),
                                SizedBox(height: 10,),
                                Text("+966-500501517", style: TextStyle(
                                      color: primaryTextColor, fontSize: 15)),
                              ],
                            ),
                            Profilelabel(
                              profileItemslabel: "Edit Your Informatin",
                            ),
                            Profilelabel(
                              profileItemslabel: "Change Password",
                              onTap: () {
                                Get.toNamed("/ChangePassword");
                              },
                            ),
                            Profilelabel(
                              profileItemslabel: "Your Address",
                            ),
                            Profilelabel(
                              profileItemslabel: "Contact Us",
                              onTap: () {
                                Get.defaultDialog(
                                    title: "Contact Us",
                                    middleText:
                                        "We are Pleased to communicate with you through",
                                    actions: [
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.mark_email_read_rounded,
                                              ),
                                              Text("\tSarah@gmail.com"),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.call),
                                              Text("\t+966-500501517"),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      )
                                    ]);
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: dPadding, right: 15),
                              child: CustomButton(
                                buttonGroundColor: greenColor,
                                buttonText: "Log Out",
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                CircleAvatarProfile(),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
