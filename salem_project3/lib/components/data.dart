import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salem_project3/components/upsuv.dart';

class MyDataController extends GetxController {
  dynamic imagesq = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
  ];

  Random? rnd;

  Image img() {
    int min = 0;
    int max = imagesq.length - 1;
    rnd = new Random();
    int r = min + rnd!.nextInt(max - min);
    String image_name = imagesq[r].toString();
    return Image.asset(
      image_name,
      fit: BoxFit.cover,
    );
  }

  TextEditingController? q1 = TextEditingController();
  TextEditingController? q2 = TextEditingController();
  TextEditingController? q3 = TextEditingController();
  TextEditingController? q4 = TextEditingController();
  TextEditingController? q5 = TextEditingController();

  updateCon() {
    upServ.add(q1!.text);
    upServ.add(q2!.text);
    upServ.add(q3!.text);
    upServ.add(q4!.text);
    upServ.add(q5!.text);
    update();
  }
}
