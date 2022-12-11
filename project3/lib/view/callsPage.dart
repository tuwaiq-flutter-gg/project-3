import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project3/component/caaComp.dart';
import 'package:project3/component/callCompVid.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(children: [
        CallCompVid(
          image: "images/profile8.jpg",
          name: "My Paradise",
          time: "(1) Today,12:55",
        ),
        CallComp(
          image: "images/profile9.jpg",
          name: "Saleh",
          time: "(1) Today,2:10",
        ),
        CallComp(
          image: "images/profile10.jpg",
          name: "Aramex",
          time: "(3) Today,2:30",
        ),
        CallCompVid(
          image: "images/profile4.jpg",
          name: "Abdulrahman",
          time: "(1) Today,5:10",
        ),
        CallCompVid(
          image: "images/profile3.jpg",
          name: "Fahed",
          time: "(2) Today,8:06",
        ),
      ]),
    );
  }
}
