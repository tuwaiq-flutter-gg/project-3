import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_project/componant/textfield.dart';
import 'package:movie_app_project/pages/Profile.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        children: [
          Container(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.to(Profile());
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 140,
                ),
                Text("Change Password")
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(right: 250),
            child: Text(
              "Enter Old Password",
              style: TextStyle(color: Color(0xff34495E)),
            ),
          ),
          Container(
            height: 61,
            width: 380,

            child: textfield(labeltext: "Enter Old Password")
          ),
          Container(
            margin: EdgeInsets.only(right: 250),
            child: Text(
              "create new password",
              style: TextStyle(color: Color(0xff34495E)),
            ),
          ),
          Container(
            height: 61,
            width: 380,
            child:textfield(labeltext: "Enter New Password")
          ),
          Container(
            height: 61,
            width: 380,
            child: textfield(labeltext: "Confirm New Password")
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 46,
            width: 380,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 100, 2, 148),
                borderRadius: BorderRadius.circular(30)),
            child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Text("save",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white))),
          ),
        ],
      )),
    );
  }
}
