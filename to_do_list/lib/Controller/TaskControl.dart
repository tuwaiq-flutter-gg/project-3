import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskController extends GetxController {
  List<String> category = ["Home", "Shooping", "Education"];
  String selected = "Home";

  TextEditingController? controllerTextField = TextEditingController();
  TextEditingController? twoControllerTextField = TextEditingController();

  void saveTask() {}
  void setSelected(String value) {
    selected = value;
    update();
  }

  var selectedDate = DateTime.now().obs;
  @override
  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2024),
    );
  }
}
