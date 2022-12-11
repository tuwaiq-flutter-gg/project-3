import 'package:blog/Components/ButtonCom.dart';
import 'package:blog/Models/Color.dart';
import 'package:blog/Views/SignIn.dart';
import 'package:blog/Views/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4D5B9),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 310,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFF4D5B9),
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 5, top: 130),
                      child: Text(
                        "Dive Into The World Of Books",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFF342927)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 100,
                      margin: EdgeInsets.only(left: 20, right: 70, top: 10),
                      child: Text(
                        "We encourage and support original authors to publish there books and create a beautiful writing world ",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF342927)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 2,
                    width: 300,
                    color: Color(0xFF057F42),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: 200,
                      child: ButtonCom(
                        ButtonName: "Start Now!",
                        OnPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => const SignUp())));
                        },
                        Color: yellow,
                        NameColor: Color(0xFF342927),
                      ))
                ],
              ),
            ),
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: FittedBox(
                child: Image.asset("images/Start.jpeg"),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        //     child: Column(
        //   children: [
        //     SizedBox(
        //       height: 50,
        //     ),
        //     Container(
        //       height: 470,
        //       width: MediaQuery.of(context).size.width - 60,
        //       color: Colors.amber,
        //       child: FittedBox(
        //         child: Image.asset("images/1.jpeg"),
        //         fit: BoxFit.fill,
        //       ),
        //     ),
        //     Container(
        //       height: 2,
        //       width: 300,
        //       color: Color(0xFFF3CD52),
        //     ),
        //     Align(
        //       alignment: Alignment.centerLeft,
        //       child: Container(
        //         height: 30,
        //         width: MediaQuery.of(context).size.width,
        //         margin: EdgeInsets.only(left: 20, top: 20),
        //         child: Text(
        //           "Dive Into The World Of Books",
        //           style: TextStyle(
        //               fontWeight: FontWeight.bold,
        //               fontSize: 20,
        //               color: Color(0xFF342927)),
        //         ),
        //       ),
        //     ),
        //     Align(
        //       alignment: Alignment.centerLeft,
        //       child: Container(
        //         height: 50,
        //         width: MediaQuery.of(context).size.width - 10,
        //         margin: EdgeInsets.only(
        //           left: 20,
        //         ),
        //         child: Text(
        //           "We support authors to create a writing worldkjhgcguikmnbvftyuinbvftyumnbgyiknbvf",
        //           style: TextStyle(fontSize: 15, color: Color(0xFF342927)),
        //         ),
        //       ),
        //     ),
        //     SizedBox(
        //       height: 50,
        //     ),
        //     //
        //     SizedBox(
        //         width: 200,
        //         child: ButtonCom(
        //           ButtonName: "Start Now!",
        //           OnPressed: () {
        //             Get.to(SignUp());
        //           },
        //           Color: Color(0xFFE5CBA6),
        //           NameColor: Color(0xFF342927),
        //         ))
        //   ],
        // )
      ),
    );
  }
}
