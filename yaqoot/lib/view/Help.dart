import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:yaqoot/components/Help_page/Rows_Hlep_P.dart';
import 'package:yaqoot/components/button.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 220, 220),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
                onPressed: (() {}),
                label: Text(
                  "0594443333",
                  style: TextStyle(color: Colors.black),
                ),
                icon: (Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 30,
                  color: Colors.black,
                ))),
          ],
        ),
      ),
      body: ListView(
        children: [
          Rows_H(
            icon1: Icons.live_help_outlined,
            name: "FAQ",
          ),
          Divider(
            height: 5,
            thickness: 2,
          ),
          Rows_H(
            icon1: Icons.mail_outline_sharp,
            name: "Open Ticket",
          ),
          Container(
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "Image/people.png",
                  height: 100,
                  width: 70,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.textsms_sharp,color:Color.fromARGB(255, 133, 40, 34) ,),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text("Our chatbot Joud is at your service 24/7",style: TextStyle(fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("Ask and she will support you or call us at 1711"),
                )
              ],
            ),
          ),

          B1(onPressed: () {
            
          },name: "Ask Joud",)
         
      
        ],
      ),
    );
  }
}
