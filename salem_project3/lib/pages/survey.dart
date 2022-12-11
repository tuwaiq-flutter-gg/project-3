import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:salem_project3/components/data.dart';
import 'package:salem_project3/components/survdata.dart';
import 'package:salem_project3/components/upsuv.dart';
import 'package:salem_project3/pages/addserv.dart';

import '../main.dart';

class Survey extends StatelessWidget {
  Survey({super.key});

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
          Servdata(),
        ],
      ),
    );
  }
}
