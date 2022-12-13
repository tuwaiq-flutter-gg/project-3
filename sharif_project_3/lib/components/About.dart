// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:project_3/Data/AppData.dart';

class About extends StatelessWidget {
  final int userIndex;
  const About({super.key, required this.userIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  users[userIndex].title.isEmpty
                      ? "No Title"
                      : users[userIndex].title,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  users[userIndex].description.isEmpty
                      ? "No Description"
                      : users[userIndex].description,
                ),
                Text(
                  users[userIndex].message.isEmpty
                      ? "No Message"
                      : users[userIndex].message,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
