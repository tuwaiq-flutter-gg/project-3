import 'package:flowers_app/view/viewAllFlowers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class viewText extends StatelessWidget {
  final text;
  final viewallText;
  final Function onpressed;
  const viewText({super.key,required this.text,required this.viewallText, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return    Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: onpressed as void Function()?,
                  child: Text(
                    viewallText,
                    style: TextStyle(color: Colors.grey),
                  ))
            ],
          ),
        );
  }
}