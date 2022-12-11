import 'package:flutter/material.dart';
import 'package:project_3/Assest/Colors.dart';
import 'package:project_3/Comp/Cusstom%20Comp/Custom%20TextFiled.dart';
import 'package:project_3/Comp/Cusstom%20Comp/Custom%20button.dart';
import 'package:project_3/Home%20Page.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: blueColor,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(children: [
            SizedBox(
              height: 120,
            ),
            Container(
                child: Text(
              "SingUp",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
            SizedBox(
              height: 30,
            ),
            CustomTextFiled(title: "Userame", textFiledIcon: Icon(null)),
            SizedBox(
              height: 20,
            ),
            CustomTextFiled(title: "Password", textFiledIcon: Icon(null)),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              background: OrngColor,
              title: "Sign In",
              buttnIcon: Icon(
                Icons.navigate_next,
                color: blueColor,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            Container(
                padding: EdgeInsets.only(top: 20),
                alignment: Alignment.centerRight,
                child: Text("Forgot Password?")),
            SizedBox(
              height: 150,
            ),
          ]),
        ),
      ),
    );
  }
}
