import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:project3/component/chatBottom.dart';
import 'package:project3/component/chatSample.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e55),
        leadingWidth: 30,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                "images/profile3.jpg",
                width: 40,
                height: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fahed"),
                  Text(
                    "Online",
                    style: TextStyle(fontSize: 15, color: Colors.white60),
                  )
                ],
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 5),
            child: Icon(
              CupertinoIcons.videocam_fill,
              color: Colors.white,
              size: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 5),
            child: Icon(
              Icons.call,
              color: Colors.white,
              size: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                width: 300,
                height: 100,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xfffff3c2),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)]),
                child: Text(
                  "Messages and calls are completely encrypted between the two parties, so that no one outside this chat, not even WhatsApp itself, can read or listen to them. Click here to find out more.",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ChatSample(),
            Spacer(),
            ChatBottom()
          ],
        ),
      ),
    );
  }
}
