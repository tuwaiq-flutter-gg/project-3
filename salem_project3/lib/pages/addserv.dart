import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:salem_project3/components/bbar.dart';
import 'package:salem_project3/components/data.dart';
import 'package:salem_project3/components/servlist.dart';
import 'package:salem_project3/components/spacing.dart';
import 'package:salem_project3/components/txtf.dart';
import 'package:salem_project3/components/upsuv.dart';
import 'package:salem_project3/pages/homepage.dart';

import '../main.dart';

class AddServ extends StatefulWidget {
  AddServ({
    super.key,
  });

  @override
  State<AddServ> createState() => _AddServState();
}

MyDataController? qq = Get.put(MyDataController());

class _AddServState extends State<AddServ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: maincolor,
        centerTitle: true,
        title: Text("Add a new Survey"),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Spacing(height: 20),
            Txtf(
              control: qq!.q1,
              hint: "Q1",
              pwd: false,
            ),
            Spacing(height: 40),
            Txtf(
              control: qq!.q2,
              hint: "Q2",
              pwd: false,
            ),
            Spacing(height: 40),
            Txtf(
              control: qq!.q3,
              hint: "Q3",
              pwd: false,
            ),
            Spacing(height: 40),
            Txtf(
              control: qq!.q4,
              hint: "Q4",
              pwd: false,
            ),
            Spacing(height: 40),
            Txtf(
              control: qq!.q5,
              hint: "Q5",
              pwd: false,
            ),
            Spacing(height: 100),
            InkWell(
              onTap: () {
                qq?.updateCon();
                servList.add(1);
                Get.off(HomePage());
              },
              child: Bbar(
                bcolor: maincolor,
                bname: "Save",
                textcolor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
