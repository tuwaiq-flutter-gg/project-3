import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class title extends StatelessWidget {
  final titleText;
  
  const title({super.key,required this.titleText,});

  @override
  Widget build(BuildContext context) {
    return Text(
                titleText ,
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 94, 31, 43),
                      ),
                );
  }
}