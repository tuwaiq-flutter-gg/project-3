import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CallComp extends StatelessWidget {
  CallComp({super.key, this.name, this.image, this.time});
  String? name;
  String? image;
  String? time;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              "$image",
              width: 60,
              height: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.call_made,
                      color: Color(0xff075e55),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "$time",
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.call_sharp,
            color: Color(0xff075e55),
          )
        ],
      ),
    );
  }
}
