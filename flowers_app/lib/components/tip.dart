import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class tip extends StatelessWidget {
  const tip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 131, 110, 118),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Text(
            "Today's tip:",
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 243, 235, 235)),
          ),
          Row(
            children: [
              Expanded(
                  child: Text(
                "Flowers are creations work of art.So, have fun finding different vases and ways to put flowers together.",
                softWrap: false,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              )),
              Image.asset(
                "images/tip1.png",
                height: Get.height / 7,
                width: Get.width / 7,
              )
            ],
          )
        ]),
      ),
    );
  }
}
