import 'package:flowers_app/components/custButton.dart';
import 'package:flowers_app/components/custTextField.dart';
import 'package:flowers_app/components/Text_TextField.dart';
import 'package:flowers_app/components/custTitle.dart';
import 'package:flowers_app/components/total.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class delivery extends StatelessWidget {
  const delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 222, 217),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: title(titleText: "Delivery Informations")),
      body: Stack(
        children: [
          Image.asset(
            "images/bg.png",
            height: Get.height,
            width: Get.width,
            fit: BoxFit.fill,
          ),
          ListView(
            padding: EdgeInsets.only(top: 20),
            children: [
              Text_TextField(text: "Full Name:", textfield: "Enter full name"),
              Text_TextField(text: "Mobile Number", textfield: "05xxxxxxxx"),
              Text_TextField(text: "Post Code:", textfield: "Enter post code"),
              Text_TextField(text: "text", textfield: "textfield"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              total(
                  price: "\$ 60.00",
                  totalPrice: "\$ 65.00",
                  name: "full of love"),
            ],
          ),
        ],
      ),
    );
  }
}
