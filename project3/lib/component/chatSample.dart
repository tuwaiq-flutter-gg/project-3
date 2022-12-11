import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:project3/component/chatBottom.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 110, top: 30),
          child: Container(
            child: ClipPath(
              clipper: UpperNipMessageClipperTwo(MessageType.receive),
              child: Container(
                padding:
                    EdgeInsets.only(top: 10, right: 10, bottom: 10, left: 25),
                decoration: BoxDecoration(color: Colors.white),
                child: Text(
                  "Hi Rashed, where are you?",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 20),
          child: Container(
            width: 150,
            alignment: Alignment.center,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            child: Text("Don't be late for class"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 250, top: 20, bottom: 15),
          child: Container(
            child: ClipPath(
              clipper: UpperNipMessageClipperTwo(MessageType.send),
              child: Container(
                padding:
                    EdgeInsets.only(top: 10, right: 20, bottom: 10, left: 10),
                decoration: BoxDecoration(color: Color(0xff075e55)),
                child: Text(
                  "I'm coming",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
