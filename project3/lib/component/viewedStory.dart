import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewedStory extends StatelessWidget {
  ViewedStory({
    super.key,
    required this.image,
    this.name,
    this.time,
  });
  String image;
  String? name;
  String? time;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(1.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.grey, width: 3)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset("$image",
                  width: 55, height: 55, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$name",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "$time",
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
