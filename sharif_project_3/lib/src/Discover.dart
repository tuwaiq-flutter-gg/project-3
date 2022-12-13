// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/Data/AppData.dart';
import 'package:project_3/components/UserCard.dart';
import 'package:project_3/src/Home.dart';
import 'package:project_3/src/LogOut.dart';
import 'package:project_3/src/OthersPage.dart';

class Discover extends StatelessWidget {
  final int userIndex;
  const Discover({super.key, required this.userIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover'),
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
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: users.length,
            itemBuilder: (context, index) {
              if (index != userIndex) {
                return InkWell(
                  onTap: () {
                    Get.to(
                      OtherPage(
                        userIndex: userIndex,
                        otherIndex: index,
                      ),
                    );
                  },
                  child: UserCard(
                    user: users[index],
                  ),
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
