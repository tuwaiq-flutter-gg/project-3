// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/Data/AppData.dart';
import 'package:project_3/components/UserCard.dart';
import 'package:project_3/src/Home.dart';
import 'package:project_3/src/LogOut.dart';
import 'package:project_3/src/OthersPage.dart';

class Following extends StatefulWidget {
  final int userIndex;
  const Following({super.key, required this.userIndex});

  @override
  State<Following> createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Following'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.offAll(
              Home(
                userIndex: widget.userIndex,
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
          child: users[widget.userIndex].followingIndexes.isEmpty
              ? Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 30),
                  child: const Text(
                    'No following',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    if (users[widget.userIndex]
                        .followingIndexes
                        .contains(index)) {
                      return InkWell(
                        onTap: () {
                          Get.to(
                            OtherPage(
                              userIndex: widget.userIndex,
                              otherIndex: index,
                            ),
                          )?.then((value) => setState(() {}));
                          ;
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
