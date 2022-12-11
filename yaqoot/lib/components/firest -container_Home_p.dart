import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Frist_c extends StatelessWidget {
  const Frist_c({super.key, required this.name, required this.Img});
  final String name;
  final String Img;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [ImageIcon(AssetImage(Img.toString()),size: 25,color:Color.fromARGB(255, 117, 30, 8),), Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(name.toString()),
        )],
      ),
    );
  }
}
