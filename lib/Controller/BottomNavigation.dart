import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigation extends GetxController{
    int selectedIndex = 0;
  List<Widget> bottomNavigationBarItem = [
 
  ];

  moveBtweenWidgets(int index){
selectedIndex = index;
    update();
  }
}