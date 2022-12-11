import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:yaqoot/components/button.dart';
import 'package:yaqoot/components/setting/Setting_Item.dart';
import 'package:yaqoot/view/Login.dart';
import 'package:yaqoot/view/package.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 220, 220),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
                onPressed: (() {}),
                label: Text(
                  "0594443333",
                  style: TextStyle(color: Colors.black),
                ),
                icon: (Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 30,
                  color: Colors.black,
                ))),
          ],
        ),
      ),
      body: ListView(
        children: [
          Item_Setting(
            icon1: "Image/sim-card.png",
            name: "My SIM settings",
            onTap: () {},
          ),
          Item_Setting(
            icon1: "Image/settings.png",
            name: "Edit Profile",
            onTap: () {},
          ),
          Item_Setting(
            icon1: "Image/product-release.png",
            name: "Manage Package",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const Package(),
                ),
              );
            },
          ),
          Item_Setting(
            icon1: "Image/speak.png",
            name: "Change Language",
          ),
          Item_Setting(
            icon1: "Image/terms-and-conditions.png",
            name: "Terms and conditions",
            onTap: () {},
          ),
          Item_Setting(
            icon1: "Image/privacy.png",
            name: "Privacy",
            onTap: () {},
          ),
          B1(
            name: "Log out",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const Login(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
