import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:salem_project3/components/bbar.dart';
import 'package:salem_project3/components/data.dart';
import 'package:salem_project3/components/rating.dart';
import 'package:salem_project3/components/spacing.dart';
import 'package:salem_project3/components/survdata.dart';
import 'package:salem_project3/components/upsuv.dart';
import 'package:salem_project3/pages/addserv.dart';

import '../main.dart';

class SSurvey extends StatelessWidget {
  SSurvey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: maincolor,
        centerTitle: true,
        title: Text("Servey"),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "On a scale of 1 to 5, how satisfied are you with your in-store experience today?",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacing(height: 20),
                Rating(),
                Spacing(height: 20),
                Center(
                  child: Text(
                    "Rate your satisfaction with our team in resolving your issue.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacing(height: 20),
                Rating(),
                Center(
                  child: Text(
                    "How likely are you to purchase again from us?",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacing(height: 20),
                Rating(),
                Spacing(height: 20),
                Center(
                  child: Text(
                    "How likely are you to return to our website?",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacing(height: 20),
                Rating(),
                Spacing(height: 20),
                Center(
                  child: Text(
                    "Do you agree or disagree that your issue was effectively resolved?",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
          ),
        ],
      ),
    );
  }
}
