import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatBottom extends StatelessWidget {
  const ChatBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 65,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Row(
                children: [
                  Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.black38,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 180,
                    child: TextFormField(
                      style: TextStyle(fontSize: 19),
                      decoration: InputDecoration(
                        hintText: "Message",
                      ),
                    ),
                  ),
                  Icon(
                    Icons.attachment_outlined,
                    color: Colors.black38,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.camera_alt,
                    color: Colors.black38,
                  ),
                ],
              ),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xff075e55),
                  borderRadius: BorderRadius.circular(30)),
              child: Icon(
                Icons.mic,
                size: 30,
                color: Colors.white,
              ),
            )
          ],
        ));
  }
}
