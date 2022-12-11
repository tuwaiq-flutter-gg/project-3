import 'package:blog/Models/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Components/ProfilCom.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: beige,
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(width: 1, color: Colors.amber),
                  borderRadius: BorderRadius.circular(80)),
              child: FittedBox(
                child: Image.asset("images/ava2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 40,
              width: 180,
              decoration: BoxDecoration(
                  color: lightBeige,
                  border: Border.all(width: 3, color: Colors.amber),
                  borderRadius: BorderRadius.circular(80)),
              child: Center(
                child: Text(
                  "Carmen Tamayo",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: currant),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.width + 142,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: lightBeige,
                border: Border.all(width: 1, color: lightBeige),
                borderRadius: BorderRadius.vertical(top: Radius.circular(70))),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                ProfileCom(
                  backColor: Color(0xFFF6DBE6),
                  icon: Icons.person,
                  iconColor: Color(0xFFD75786),
                  text: "Edit Profile",
                ),
                //
                SizedBox(
                  height: 20,
                ),
                ProfileCom(
                  backColor: Color(0xFFDDDDFB),
                  icon: Icons.border_color_outlined,
                  iconColor: Color(0xFF5C56C1),
                  text: "Edit My Books",
                ),
                //
                SizedBox(
                  height: 20,
                ),
                ProfileCom(
                  backColor: Color(0xFFF9E1C4),
                  icon: Icons.settings,
                  iconColor: Color(0xFFE37C33),
                  text: "Settings",
                ),
                //
                SizedBox(
                  height: 20,
                ),
                ProfileCom(
                  backColor: Colors.blueGrey[100],
                  icon: Icons.support_agent,
                  iconColor: Colors.blueGrey,
                  text: "Support",
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
