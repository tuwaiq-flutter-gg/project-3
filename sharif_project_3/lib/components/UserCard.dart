// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/Data/User.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Get.isDarkMode ? Colors.black : Colors.blue,
      ),
      margin: const EdgeInsets.all(5),
      padding: EdgeInsets.fromLTRB(0, 5, 15, 5),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width / 3.3,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Get.isDarkMode ? Colors.white : Colors.black54,
            ),
            padding: EdgeInsets.all(10),
            child: user.profilePicture == null
                ? CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("images/avatar-icon.png"),
                  )
                : CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: FileImage(
                      File(user.profilePicture!.path),
                    ),
                  ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 7,
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      user.userName,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          user.posts.length.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Posts",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          user.followers > 1000
                              ? "${user.followers / 1000}k"
                              : user.followers.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Followers",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          user.followingIndexes.length.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Following",
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
