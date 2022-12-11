import 'package:flutter/material.dart';
import 'package:project_3/Assest/Colors.dart';
import 'package:project_3/Comp/Cusstom%20Comp/Custom%20TextFiled.dart';
import 'package:project_3/Comp/Cusstom%20Comp/Custom%20keybord.dart';

class QuickLogin extends StatefulWidget {
  const QuickLogin({super.key});

  @override
  State<QuickLogin> createState() => _QuickLoginState();
}

class _QuickLoginState extends State<QuickLogin> {
  TextEditingController? control = TextEditingController();
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
                    "Quick login",
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: OrngColor),
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextFiled(
                      control: control,
                      title: "Short Password",
                      textFiledIcon: Icon(Icons.password)),
                  SizedBox(
                    height: 30,
                  ),
                  KeybordNumber(
                    control: control!,
                  )
                ]))));
  }
}
