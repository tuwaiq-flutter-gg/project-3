// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:to_do_list/Comp/ButtonForm.dart';
import 'package:to_do_list/Comp/TextField.dart';
import 'package:to_do_list/Controller/TaskControl.dart';
import 'package:to_do_list/View/WelcomePage.dart';
import 'package:to_do_list/View/splashPage.dart';

class AddTask extends StatelessWidget {
  AddTask({super.key});

  TaskController controller = Get.find();
  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Adding Task",
          style: TextStyle(color: Color(0xff9088D4)),
        ),
        actions: [
          IconButton(
            color: Color(0xff9088D4),

              onPressed: () {
                Get.offAll(SplashPage(goTo: WelcomePage(), duration: 5));
              },
              icon: Icon(Icons.logout))
        ],
        elevation: 0,
        backgroundColor: Color(0xffE7E6F5),
        leading: IconButton(
            color: Color(0xff9088D4),
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: ListView(
        children: [
          textfield(
            Title: "Task Name",
            con: con1,
          ),
          textfield(
            Title: "Description",
            con: con2,
          ),
          Center(child: Text("Enter Category")),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: DropdownButton<String>(
                onChanged: (newValue) {
                  controller.setSelected(newValue!);
                },
                value: controller.selected,
                items: controller.category.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
          Obx(
            () => Text(
              DateFormat("dd-MM-yyyy")
                  .format(controller.selectedDate.value)
                  .toString(),
              style: TextStyle(fontSize: 25),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              controller.chooseDate();
            },
            child: Text('Select Date'),
          ),
          SizedBox(
            height: 30,
          ),
          button(
              title: "Save",
              onPressed: () {
                Get.to(WelcomePage());
              }),
        ],
      ),
    );
  }
}
