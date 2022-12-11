// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:to_do_list/Comp/TextField.dart';
import 'package:to_do_list/Controller/TaskControl.dart';
import 'package:to_do_list/View/AddTask.dart';
import 'package:to_do_list/View/Login.dart';
import 'package:to_do_list/View/WelcomePage.dart';
import 'package:to_do_list/View/splashPage.dart';
import 'package:to_do_list/main.dart';

class TaskList extends StatelessWidget {
  TaskList({super.key, required this.title});
  List<Color> ColorCate = Colpur;
  TextEditingController twoControllerTextField = TextEditingController();
  TaskController controller = Get.put(TaskController());

  final String title;
  @override
  Widget build(BuildContext context) {
    String img = "images/" + title + ".png";
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "$title List",
            style: TextStyle(color: Color(0xff9088D4)),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffE7E6F5),
          leading: IconButton(
              color: Color(0xff9088D4),
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios)),
          actions: [
            IconButton(
                color: Color(0xff9088D4),
                onPressed: () {
                  Get.offAll(SplashPage(goTo: WelcomePage(), duration: 5));
                },
                icon: Icon(Icons.logout))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Get.to(AddTask());
          },
          backgroundColor: Colors.red.shade200,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Slidable(
              endActionPane: ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      Get.defaultDialog(
                          confirm: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Delete")),
                          title: "Delete the Task",
                          cancel: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Cancel")),
                          middleText: "You are deleting the task",
                          onConfirm: () {});
                    },
                    icon: Icons.delete,
                    borderRadius: BorderRadius.circular(10),
                    backgroundColor: Colors.red.shade100,
                  ),
                  SlidableAction(
                    onPressed: (context) {
                      Get.defaultDialog(
                          content: Column(
                            children: [
                              textfield(
                                  Title: "Task name",
                                  con: twoControllerTextField),
                              textfield(
                                  Title: "Description",
                                  con: twoControllerTextField),
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
                            ],
                          ),
                          confirm: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Save")),
                          title: "Editing the Task",
                          middleText: "Edit",
                          cancel: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Cancel")),
                          onConfirm: () {});
                    },
                    icon: Icons.edit,
                    borderRadius: BorderRadius.circular(10),
                    backgroundColor: Colors.green.shade100,
                  )
                ],
              ),
              startActionPane: ActionPane(
                motion: StretchMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      Get.defaultDialog(
                          confirm: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Done")),
                          title: "the task is finished",
                          cancel: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Cancel")),
                          middleText: "Congraltion on finishing the Task",
                          onConfirm: () {});
                    },
                    icon: Icons.done,
                    borderRadius: BorderRadius.circular(10),
                    backgroundColor: Colors.blue.shade100,
                  )
                ],
              ),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(
                        color: Colors.white70,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: Colpur,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          offset: Offset(2.0, 2.0),
                        ),
                      ]),
                  height: Get.height / 8,
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: Get.width / 4,
                        child: Image.asset(img),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Title of the task"),
                            Text("Description of the "),
                            Text("2022/12/9"),
                            // DatePickerDialog(
                            //     initialDate: DateTime.now(),
                            //     firstDate: DateTime(2002, 2, 2),
                            //     lastDate: DateTime(2023, 2, 1))
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Slidable(
              endActionPane: ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      Get.defaultDialog(
                          confirm: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Delete")),
                          title: "Delete the Task",
                          cancel: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Cancel")),
                          middleText: "You are deleting the task",
                          onConfirm: () {});
                    },
                    icon: Icons.delete,
                    borderRadius: BorderRadius.circular(10),
                    backgroundColor: Colors.red.shade100,
                  ),
                  SlidableAction(
                    onPressed: (context) {
                      Get.defaultDialog(
                          content: Column(
                            children: [
                              textfield(
                                  Title: "Task name",
                                  con: twoControllerTextField),
                              textfield(
                                  Title: "Description",
                                  con: twoControllerTextField),
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
                            ],
                          ),
                          confirm: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Save")),
                          title: "Editing the Task",
                          middleText: "Edit",
                          cancel: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Cancel")),
                          onConfirm: () {});
                    },
                    icon: Icons.edit,
                    borderRadius: BorderRadius.circular(10),
                    backgroundColor: Colors.green.shade100,
                  )
                ],
              ),
              startActionPane: ActionPane(
                motion: StretchMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      Get.defaultDialog(
                          confirm: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Done")),
                          title: "the task is finished",
                          cancel: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Cancel")),
                          middleText: "Congraltion on finishing the Task",
                          onConfirm: () {});
                    },
                    icon: Icons.done,
                    borderRadius: BorderRadius.circular(10),
                    backgroundColor: Colors.blue.shade100,
                  )
                ],
              ),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(
                        color: Colors.white70,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: Colpur,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          offset: Offset(2.0, 2.0),
                        ),
                      ]),
                  height: Get.height / 8,
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: Get.width / 4,
                        child: Image.asset(img),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Title of the task"),
                            Text("Description of the "),
                            Text("2022/12/9"),
                            // DatePickerDialog(
                            //     initialDate: DateTime.now(),
                            //     firstDate: DateTime(2002, 2, 2),
                            //     lastDate: DateTime(2023, 2, 1))
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Slidable(
              endActionPane: ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      Get.defaultDialog(
                          confirm: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Delete")),
                          title: "Delete the Task",
                          cancel: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Cancel")),
                          middleText: "You are deleting the task",
                          onConfirm: () {});
                    },
                    icon: Icons.delete,
                    borderRadius: BorderRadius.circular(10),
                    backgroundColor: Colors.red.shade100,
                  ),
                  SlidableAction(
                    onPressed: (context) {
                      Get.defaultDialog(
                          content: Column(
                            children: [
                              textfield(
                                  Title: "Task name",
                                  con: twoControllerTextField),
                              textfield(
                                  Title: "Description",
                                  con: twoControllerTextField),
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
                            ],
                          ),
                          confirm: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Save")),
                          title: "Editing the Task",
                          middleText: "Edit",
                          cancel: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Cancel")),
                          onConfirm: () {});
                    },
                    icon: Icons.edit,
                    borderRadius: BorderRadius.circular(10),
                    backgroundColor: Colors.green.shade100,
                  )
                ],
              ),
              startActionPane: ActionPane(
                motion: StretchMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      Get.defaultDialog(
                          confirm: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Done")),
                          title: "the task is finished",
                          cancel: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Cancel")),
                          middleText: "Congraltion on finishing the Task",
                          onConfirm: () {});
                    },
                    icon: Icons.done,
                    borderRadius: BorderRadius.circular(10),
                    backgroundColor: Colors.blue.shade100,
                  )
                ],
              ),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border: Border.all(
                        color: Colors.white70,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: Colpur,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          offset: Offset(2.0, 2.0),
                        ),
                      ]),
                  height: Get.height / 8,
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: Get.width / 4,
                        child: Image.asset(img),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Title of the task"),
                            Text("Description of the "),
                            Text("2022/12/9"),
                            // DatePickerDialog(
                            //     initialDate: DateTime.now(),
                            //     firstDate: DateTime(2002, 2, 2),
                            //     lastDate: DateTime(2023, 2, 1))
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ));
  }
}
