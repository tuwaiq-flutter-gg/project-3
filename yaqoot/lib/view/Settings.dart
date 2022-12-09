import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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

        ],
      ),
    );
  }
}