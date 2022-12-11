// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/Data/AppData.dart';
import 'package:project_3/components/Button.dart';
import 'package:project_3/src/Home.dart';
import 'package:project_3/src/LogOut.dart';

class Setting extends StatelessWidget {
  final int userIndex;
  const Setting({super.key, required this.userIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.offAll(
              Home(
                userIndex: userIndex,
              ),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                LogOut(),
              );
            },
            icon: Icon(
              Icons.exit_to_app_outlined,
              size: 40,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20, left: 7, top: 50),
                    child: Text(
                      "Change Theme",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                    title: 'Dark',
                    press: () {
                      Get.changeTheme(
                        MyDark,
                      );
                    },
                    icon: Icons.dark_mode,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                    title: 'Light',
                    press: () {
                      Get.changeTheme(
                        MyLight,
                      );
                    },
                    icon: Icons.light_mode,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
