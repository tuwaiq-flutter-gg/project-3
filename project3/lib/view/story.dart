import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project3/component/circleIma.dart';
import 'package:project3/component/mycircleIma.dart';
import 'package:project3/component/viewedStory.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                MyCircleImage(
                  image: "images/profile4.jpg",
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Status",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Today 3:00 PM",
                        style: TextStyle(fontSize: 15, color: Colors.black45),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Icon(
                    Icons.more_vert_rounded,
                    color: Color(0xff075e55),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            alignment: Alignment.centerLeft,
            child: Text(
              "Recent Updates",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black54),
            ),
          ),
          CircleImage(
              image: "images/profile3.jpg",
              name: "Fahed",
              time: "Today 11:22 AM"),
          CircleImage(
              image: "images/profile5.jpg",
              name: "Salem",
              time: "Today 4:12 PM"),
          CircleImage(
              image: "images/profile9.jpg",
              name: "Saleh",
              time: "Today 7:25 pM"),
          Container(
            margin: EdgeInsets.only(left: 8),
            alignment: Alignment.centerLeft,
            child: Text(
              "Viewed Updates",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black54),
            ),
          ),
          ViewedStory(
              image: "images/profile2.jpg",
              name: "My sister",
              time: "Today 11:00 AM"),
          ViewedStory(
              image: "images/profile8.jpg",
              name: "My Paradise",
              time: "Today 4:00 PM"),
          ViewedStory(
              image: "images/profile11.jpg",
              name: "Khaled",
              time: "Today 7:25 pM"),
        ],
      ),
    );
  }
}
