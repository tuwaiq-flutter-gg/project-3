import 'package:blog/Components/ButtonCom.dart';
import 'package:blog/Models/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../Components/TextField.dart';
import 'BNBar.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF3ED),
      body: SafeArea(
          child: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 175,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFFAF3ED),
              child: Expanded(
                child: FittedBox(
                  child: Image.asset("images/new.jpg"),
                  fit: BoxFit.contain,
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
                  color: Color(0xFFE5CBA6),
                  border: Border.all(width: 1, color: Color(0xFFE5CBA6)),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(70))),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    widthFactor: 3.3,
                    child: Text("Sign In",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF342927))),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 30,
                    width: 280,
                    child: Text("Email",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF342927))),
                  ),
                  Container(
                    width: 280,
                    height: 50,
                    child: TextFieldCom(
                      FieldColor: lightBeige,
                      Icon: Icon(Icons.email_outlined),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 30,
                    width: 280,
                    child: Text("Password",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF342927))),
                  ),
                  Container(
                    width: 280,
                    height: 50,
                    child: TextFieldCom(
                      FieldColor: lightBeige,
                      Icon: Icon(Icons.lock),
                    ),
                  ),
                  //------------------------------------------------------------
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    child: ButtonCom(
                      ButtonName: "Sign In",
                      Color: Color(0xFF8D3545),
                      NameColor: Color(0xFF342927),
                      OnPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => const BNBar())));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    child: Text("Forgot Password ?",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF342927))),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ])),
    );
  }
}
