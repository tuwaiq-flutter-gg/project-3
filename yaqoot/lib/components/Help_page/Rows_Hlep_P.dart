import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Rows_H extends StatelessWidget {
  const Rows_H({super.key, required this.name, required this.icon1});
  final String name;
  final IconData icon1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                left: 10.0, top: 10.0, bottom: 17.0, right: 12.0),
            width: 15.0,
            height: 25.0,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(40.0)),
            child: Icon(
              icon1,
              size: 30,
              color: Color.fromARGB(255, 133, 40, 34),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Text(
                  name.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          new Spacer(),
          Icon(
            Icons.navigate_next,
            color: Colors.black,
            size: 30,
          ) // This Icon
        ],
      ),
    );
  }
}
