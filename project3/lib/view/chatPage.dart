import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project3/component/chatComp.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatComp(
          image: "images/profile3.jpg",
          name: "Fahed",
          message: "Where are you?",
          time: "8:12 AM",
          countmess: "2",
        ),
        ChatComp(
          image: "images/profile5.jpg",
          name: "Salem",
          message: "Good Moring",
          time: "10:33 AM",
          countmess: "1",
        ),
        ChatComp(
          image: "images/profile2.jpg",
          name: "My sister",
          message: "Go to the store and get us\nsome bread",
          time: "1:15 PM",
          countmess: "1",
        ),
        ChatComp(
          image: "images/profile10.jpg",
          name: "Aramex",
          message: "Look, I'm at your door",
          time: "2:30 PM",
          countmess: "1",
        ),
        ChatComp(
          image: "images/profile9.jpg",
          name: "Saleh",
          message: "Did you do the homework?",
          time: "8:22 PM",
          countmess: "3",
        ),
        ChatComp(
          image: "images/profile8.jpg",
          name: "My Paradise",
          message: "Go home now",
          time: "10:01 PM",
          countmess: "1",
        ),
        ChatComp(
          image: "images/profile4.jpg",
          name: "Abdulrahman",
          message: "Do you want us to go\n to the cinema?",
          time: "2:30 PM",
          countmess: "1",
        ),
      ],
    );
  }
}
