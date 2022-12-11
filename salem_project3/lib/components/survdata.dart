import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:salem_project3/components/bbar.dart';
import 'package:salem_project3/components/data.dart';
import 'package:salem_project3/components/rating.dart';
import 'package:salem_project3/components/spacing.dart';
import 'package:salem_project3/components/upsuv.dart';
import 'package:salem_project3/main.dart';

class Servdata extends StatelessWidget {
  Servdata({super.key});
  MyDataController? qq = Get.put(MyDataController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Center(
            child: Text(
              upServ[0],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Spacing(height: 20),
          Rating(),
          Spacing(height: 20),
          Center(
            child: Text(
              upServ[1],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Spacing(height: 20),
          Rating(),
          Center(
            child: Text(
              upServ[2],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Spacing(height: 20),
          Rating(),
          Spacing(height: 20),
          Center(
            child: Text(
              upServ[3],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Spacing(height: 20),
          Rating(),
          Spacing(height: 20),
          Center(
            child: Text(
              upServ[4],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Spacing(height: 20),
          Rating(),
          Spacing(height: 80),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Bbar(
              bcolor: maincolor,
              bname: "Save",
              textcolor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
