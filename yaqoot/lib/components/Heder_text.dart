import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Heder_Text extends StatelessWidget {
  const Heder_Text({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,top: 10),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            name,
            style: TextStyle(fontSize: 18),
          )),
    );
  }
}
