import 'package:flowers_app/components/custButton.dart';
import 'package:flowers_app/components/custTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class payment extends StatelessWidget {
  const payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Image.asset("name"),
                  Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  )
                ],
              ),
            ),
          ],
        )),
        Text("data"),
        Row(
          children: [
            custTextField(text: "Apply code"),
            custButton(press: () {}, text: "Apply code"),
            InkWell(
              child: Container(),
            )
          ],
        )
      ],
    ));
  }
}
