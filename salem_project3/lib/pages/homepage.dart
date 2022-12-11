import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:salem_project3/components/containers.dart';
import 'package:salem_project3/components/data.dart';
import 'package:salem_project3/components/servlist.dart';
import 'package:salem_project3/components/spacing.dart';
import 'package:salem_project3/components/upsuv.dart';
import 'package:salem_project3/main.dart';
import 'package:salem_project3/pages/addserv.dart';
import 'package:salem_project3/pages/settings.dart';
import 'package:salem_project3/pages/signin.dart';
import 'package:salem_project3/pages/signout.dart';
import 'package:salem_project3/pages/staticsurvey.dart';
import 'package:salem_project3/pages/survey.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController? srch1 = TextEditingController();

  MyDataController qq = MyDataController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddServ());
        },
        backgroundColor: maincolor,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: maincolor,
        centerTitle: true,
        title: Text("Take a Servey"),
        leading: IconButton(
          onPressed: () {
            Get.to(Profile());
          },
          icon: Icon(Icons.settings),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(SignOut());
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: TextField(
              textAlign: TextAlign.left,
              controller: srch1,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),
                  fillColor: lightgrey),
            ),
          ),
          Stack(children: [
            Containers(
              child: ClipRRect(
                child: qq.img(),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: Get.width,
              height: 120,
              func: () {
                Get.to(SSurvey());
              },
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Text(
                "Survey                ",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: lightgrey),
              ),
            )),
          ]),
          for (int x = 0; x < servList.length; x++)
            Stack(children: [
            Containers(
              child: ClipRRect(
                child: qq.img(),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: Get.width,
              height: 120,
              func: () {
                Get.to(SSurvey());
              },
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Text(
                "Survey                ",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: lightgrey),
              ),
            )),
          ]),
        ],
      ),
    );
  }
}
