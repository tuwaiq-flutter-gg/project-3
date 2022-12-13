// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/Data/AppData.dart';
import 'package:project_3/src/AddPost.dart';
import 'package:project_3/src/EditProfile.dart';

class PageTop extends StatelessWidget {
  final bool editable;
  final int userIndex;
  const PageTop({super.key, required this.userIndex, required this.editable});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 20, 15, 10),
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
            child: users[userIndex].profilePicture == null
                ? CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("images/avatar-icon.png"),
                  )
                : CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: FileImage(
                      File(users[userIndex].profilePicture!.path),
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
                  mainAxisAlignment: editable
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      users[userIndex].userName,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                      ),
                    ),
                    if (editable)
                      Row(
                        children: [
                          IconButton(
                            iconSize: MediaQuery.of(context).size.height / 25,
                            onPressed: () {
                              Get.to(
                                AddPost(
                                  userIndex: userIndex,
                                ),
                              );
                            },
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(
                              Icons.add_a_photo_outlined,
                            ),
                          ),
                          IconButton(
                            iconSize: MediaQuery.of(context).size.height / 23,
                            onPressed: () {
                              Get.to(
                                EditProfile(
                                  userIndex: userIndex,
                                ),
                              );
                            },
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(
                              Icons.settings_applications_outlined,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          users[userIndex].posts.length.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            //color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Posts",
                          style: TextStyle(
                              //color: Colors.white,
                              ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          users[userIndex].followers > 1000
                              ? "${users[userIndex].followers / 1000}k"
                              : users[userIndex].followers.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            //color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Followers",
                          style: TextStyle(
                              //color: Colors.white,
                              ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          users[userIndex].followingIndexes.length.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            //color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Following",
                          style: TextStyle(
                              //color: Colors.white,
                              ),
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
